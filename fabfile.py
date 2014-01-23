from fabric.api import local, run, cd, puts, settings, hide
from fabric.contrib import files
from ConfigParser import RawConfigParser
from StringIO import StringIO

def pull():
	# Pull changes into server.
	with cd('carto'):
		run('git pull')

def create_xml(project):
	# Create mapnik xml from carto.
	# Update the mapnil-style directory with the new xml.
	with cd('carto'):
		run('/home/sajjad/node_modules/carto/bin/carto %s/project.local.mml > /home/sajjad/%s.xml' % (project, project))
		run('mv /home/sajjad/%s.xml /home/sajjad/src/mapnik-style' % (project, project))

def create_local_mml(project):
	# Use CartoCC and create project.local.mml
	with cd('carto/%s' % project):
		run('/home/mikel/bin/CartoCC/bin/cartocc project.mml /home/mikel/bin/CartoCC/moabi.json > project.local.mml')

def update_renderd_conf(project):
	# Update renderd.conf with the config for the new tileset.
	with cd('/usr/local/etc/'):
		config = RawConfigParser()
		# URI=/redd/
		# TILEDIR=/var/lib/mod_tile
		# XML=/home/sajjad/src/mapnik-style/REDD.xml
		# HOST=localhost
		# TILESIZE=256
		config.add_section(project)
		config.set(project, 'URI', '/%s/' % project)
		config.set(project, 'TILEDIR', '/var/lib/mod_tile')
		config.set(project, 'XML', '/home/sajjad/src/mapnik-style/%s.xml' % project)
		config.set(project, 'HOST', 'localhost')
		config.set(project, 'TILESIZE', '256')
		buffer = StringIO()
		config.write(buffer)
		files.append('renderd.conf', buffer.getvalue(), use_sudo=True)

def _get_current():
	# Get current crontab
    with settings(hide('warnings', 'stdout'), warn_only=True):
        output = run('crontab -l')
        return output if output.succeeded else ''

def update_cron(project):
	# Update crontab
	current = _get_current()
	new = current+' | /home/sajjad/src/mod_tile/render_expired --map=%s --min-zoom=8 --touch-from=10 >/dev/null' % project
	run("echo '%s'|crontab -" % new)

def prepare_server():
	pull()

def deploy(project):
	# Stop renderd.
	run('sudo /etc/init.d/renderd stop')
	# Remove existing tiles.
	run('rm -rf /var/lib/mod_tile/%s' % project)
	# Start renderd.
	run('sudo /etc/init.d/renderd start')
	# Restart apache.
	run('sudo /etc/init.d/apache2 restart')

def update(project):
	prepare_server()
	create_xml(project)
	deploy(project)

def create(project):
	prepare_server()
	create_local_mml(project)
	update_renderd_conf(project)
	update_cron(project)
	deploy(project)

