#!/bin/sh

cd /var/www/planet/extracts

rm *

osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways protected_area=redd --used-node --write-xml redd_projects.osm
/home/moabi/osmtogeojson/osmtogeojson redd_projects.osm > redd_projects.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways boundary=indigenous --used-node --write-xml indigenous.osm
/home/moabi/osmtogeojson/osmtogeojson indigenous.osm > indigenous.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways industrial=logging --used-node --write-xml logging.osm 
/home/moabi/osmtogeojson/osmtogeojson logging.osm > logging.geojson

#osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways industrial=mining --write-xml mining.osm 
#/home/moabi/osmtogeojson/osmtogeojson mining.osm > mining.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways industrial=oil --used-node --write-xml oil.osm 
/home/moabi/osmtogeojson/osmtogeojson oil.osm > oil.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways trees=oil_palms --used-node --write-xml oil_palm.osm 
/home/moabi/osmtogeojson/osmtogeojson oil_palm.osm > oil_palm.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways highway=proposed --used-node --write-xml highway.osm 
/home/moabi/osmtogeojson/osmtogeojson highway.osm > highway.geojson

ogr2ogr -f GeoJSON protected_area.geojson /home/moabi/dependencies/DRC_Protected_Area_JULY_2013.shp

osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways power=line --used-node --write-xml power.osm 
/home/moabi/osmtogeojson/osmtogeojson power.osm > power.geojson

osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-nodes waterway=dam --tf reject-ways  --write-xml dam.osm 

gzip -f *
