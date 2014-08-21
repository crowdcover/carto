#!/bin/sh

cd /var/www/planet/extracts

rm *

# redd projects
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways landuse=redd --used-node --write-xml redd_projects.osm
/home/moabi/osmtogeojson/osmtogeojson redd_projects.osm > redd_projects.geojson

# indigenous lands
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways territory=indigenous --used-node --write-xml indigenous.osm
/home/moabi/osmtogeojson/osmtogeojson indigenous.osm > indigenous.geojson

# logging concessions
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways concession=logging --used-node --write-xml logging.osm
/home/moabi/osmtogeojson/osmtogeojson logging.osm > logging.geojson

# mining concessions
# osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways concession=mining --write-xml mining.osm
# /home/moabi/osmtogeojson/osmtogeojson mining.osm > mining.geojson

# oil concessions
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways concession=oil --used-node --write-xml oil.osm
/home/moabi/osmtogeojson/osmtogeojson oil.osm > oil.geojson

# palm oil
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways concession=agriculture --used-node --write-xml oil_palm.osm
/home/moabi/osmtogeojson/osmtogeojson oil_palm.osm > oil_palm.geojson

# road rehabilitation projects
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways proposed=true --used-node --write-xml highway.osm
/home/moabi/osmtogeojson/osmtogeojson highway.osm > highway.geojson

# protected areas
ogr2ogr -f GeoJSON protected_area.geojson /home/moabi/dependencies/DRC_Protected_Area_JULY_2013.shp

# energy transmission lines
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways energy=transmission_line --used-node --write-xml power.osm
/home/moabi/osmtogeojson/osmtogeojson power.osm > power.geojson

# hydro power
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-nodes energy=dam --tf reject-ways  --write-xml dam.osm

gzip -f *
