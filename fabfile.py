from fabric.api import run, cd, settings, hide, sudo
from fabric.contrib import files
from string import Template

def pull():
  # Pull changes into server.
  with cd('carto'):
    run('git pull')

def create_xml(project):
  # Create mapnik xml from carto.
  # Update the mapnil-style directory with the new xml.
  with cd('carto'):
    run('/home/sajjad/node_modules/carto/bin/carto %s/project.local.mml > /home/moabi/%s.xml' % (project, project))
    run('mv /home/moabi/%s.xml /home/moabi/src/mapnik-style/%s.xml' % (project, project))

def create_local_mml(project):
  # Use CartoCC and create project.local.mml
  with cd('carto/%s' % project):
    run('/home/mikel/bin/CartoCC/bin/cartocc project.mml /home/mikel/bin/CartoCC/moabi.json > project.local.mml')

def update_renderd_conf(project):
  # Update renderd.conf with the config for the new tileset.
  # URI=/redd/
  # TILEDIR=/var/lib/mod_tile
  # XML=/home/sajjad/src/mapnik-style/REDD.xml
  # HOST=localhost
  # TILESIZE=256
  with cd('/usr/local/etc/'):
    template = Template("[$project]\nURI=/$project/\nTILEDIR=/var/lib/mod_tile\nXML=/home/moabi/src/mapnik-style/$project.xml\nHOST=localhost\nTILESIZE=256\n")
    config = template.substitute(project=project)
    files.append('renderd.conf', config, use_sudo=True)

def update_cron(project):
  # Update crontab
  with settings(hide('warnings', 'stdout'), warn_only=True):
    current = sudo('crontab -u sajjad -l')
  new = current+' | /home/sajjad/src/mod_tile/render_expired --map=%s --min-zoom=8 --touch-from=10 >/dev/null' % project
  run("echo '%s'|sudo crontab -u sajjad -" % new)

def copy_img():
  with cd('carto'):
    run('cp -r img/ /home/moabi/src')

def prepare_server():
  pull()

def deploy(project):
  # Stop renderd.
  run('sudo /etc/init.d/renderd stop')
  # Remove existing tiles.
  run('sudo rm -rf /var/lib/mod_tile/%s' % project)
  # Start renderd.
  run('sudo /etc/init.d/renderd start')
  # Restart apache.
  run('sudo /etc/init.d/apache2 restart')

def update(project):
  prepare_server()
  create_local_mml(project)
  create_xml(project)
  copy_img()
  deploy(project)

def create(project):
  prepare_server()
  create_local_mml(project)
  copy_img()
  create_xml(project)
  update_renderd_conf(project)
  update_cron(project)
  deploy(project)

