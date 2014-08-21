from fabric.api import run, cd, settings, hide
from fabric.contrib import files
from string import Template
import urllib, urllib2
import base64

def pull():
  # Pull changes into server.
  with cd('carto'):
    run('git pull')

def create_xml(project):
  # Create mapnik xml from carto.
  # Update the mapnil-style directory with the new xml.
  with cd('carto'):
    run('/home/moabi/node_modules/carto/bin/carto %s/project.local.mml > /home/moabi/%s.xml' % (project, project))
    run('mv /home/moabi/%s.xml /home/moabi/src/mapnik-style/%s.xml' % (project, project))

def create_local_mml(project):
  # Use CartoCC and create project.local.mml
  with cd('carto/%s' % project):
    run('/home/moabi/CartoCC/bin/cartocc project.mml /home/moabi/CartoCC/moabi.json > project.local.mml')

def update_renderd_conf(project):
  # Update renderd.conf with the config for the new tileset.
  # URI=/redd/
  # TILEDIR=/var/lib/mod_tile
  # XML=/home/moabi/src/mapnik-style/REDD.xml
  # HOST=localhost
  # TILESIZE=256
  with cd('/usr/local/etc/'):
    template = Template("[$project]\nURI=/$project/\nTILEDIR=/var/lib/mod_tile\nXML=/home/moabi/src/mapnik-style/$project.xml\nHOST=localhost\nTILESIZE=256\n")
    config = template.substitute(project=project)
    files.append('renderd.conf', config, use_sudo=True)

def update_cron(project):
  # Update crontab
  with settings(hide('warnings', 'stdout'), warn_only=True):
    current = run('crontab -l')
  new = current+'cat /home/moabi/expire.list | /home/moabi/src/mod_tile/render_expired --map=%s --min-zoom=8 --touch-from=10 >/dev/null;' % project
  run("echo '%s'|crontab -" % new)

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

def add_to_osm(project):
  url = 'http://osm.moabi.org/api/0.6/tiles.json'
  values = dict(tile=(dict(code=project[0], keyid=project.lower(), name=project, attribution="Moabi", url="http://tiles.osm.moabi.org/moabi_%s/{z}/{x}/{y}.png" % project.lower(), subdomains='', base_layer='false', description='')))  
  data = urllib.urlencode(values)
  req = urllib2.Request(url, data)
  base64string = base64.encodestring('%s:%s' % ('user', 'password')).replace('\n', '')
  req.add_header("Authorization", "Basic %s" % base64string) 
  rsp = urllib2.urlopen(req)
  write_tile_js()
  
def write_tile_js():
  run ('wget http://osm.moabi.org/api/0.6/tiles.js -O /var/www/openstreetmap-website/app/assets/javascripts/moabi.tiles.js')

def clear_grids(project):
  # The TileStache clean procedure is going to be awfully slow.
  # run('sudo tilestache-clean.py --config=/home/moabi/tilestache.cfg --bbox=-35.8 52.0 37.7 -26.0 -q --layer=%s -e json 3 4 5 6 7 8 9 10 11 12 14' % project)
  run('sudo rm -rf /tmp/stache/%s' % project)

def update(project):
  prepare_server()
  create_local_mml(project)
  create_xml(project)
  clear_grids(project)
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

