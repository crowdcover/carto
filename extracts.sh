#!/bin/sh

cd /var/www/planet/extracts

osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways protected_area=redd --write-xml redd_projects.osm
/home/moabi/osmtogeojson/osmtogeojson redd_projects.osm > redd_projects.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways boundary=indigenous --write-xml indigenous.osm
/home/moabi/osmtogeojson/osmtogeojson indigenous.osm > indigenous.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways industrial=logging --write-xml logging.osm 
/home/moabi/osmtogeojson/osmtogeojson logging.osm > logging.geojson

#osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways industrial=mining --write-xml mining.osm 
#/home/moabi/osmtogeojson/osmtogeojson mining.osm > mining.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways industrial=oil --write-xml oil.osm 
/home/moabi/osmtogeojson/osmtogeojson oil.osm > oil.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways trees=oil_palms --write-xml oil_palm.osm 
/home/moabi/osmtogeojson/osmtogeojson oil_palm.osm > oil_palm.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways highway=proposed --write-xml highway.osm 
/home/moabi/osmtogeojson/osmtogeojson highway.osm > highway.geojson

gzip -f *

