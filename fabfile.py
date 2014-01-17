from fabric.api import local, run, cd

def commit():
	# Commit the changes to carto files
	local('git commit -a')

def push():
	# Push to the repo
	local('git push origin master')

def prepare_deploy():
	# Commit and Push. 
	commit()
	push()

def pull():
	# Pull changes into server.
	with cd('carto'):
		run('git pull')

def create_xml():
	# Create mapnik xml from carto.
	# Update the mapnil-style directory with the new xml.
	with cd('carto'):
		run('/home/sajjad/node_modules/carto/bin/carto REDD/project.local.mml > /home/sajjad/REDD.xml')
		run('mv /home/sajjad/REDD.xml /home/sajjad/src/mapnik-style')

def prepare_server():
	pull()
	create_xml()

def deploy():
	prepare_deploy()
	prepare_server()
	# Stop renderd.
	run('sudo /etc/init.d/renderd stop')
	# Remove existing tiles.
	run('rm -rf /var/lib/mod_tile/redd')
	# Start renderd.
	run('sudo /etc/init.d/renderd start')
	# Restart apache.
	run('sudo /etc/init.d/apache2 restart')


