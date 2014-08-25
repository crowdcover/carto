#!/bin/sh

cd /var/www/planet/extracts

rm *

# redd projects
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways landuse=redd --used-node --write-xml redd_projects.osm
/home/moabi/osmtogeojson/osmtogeojson redd_projects.osm > redd_projects.geojson

# indigenous lands
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways territory=indigenous --used-node --write-xml indigenous_lands.osm
/home/moabi/osmtogeojson/osmtogeojson indigenous_lands.osm > indigenous_lands.geojson

# logging concessions
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways concession=logging --used-node --write-xml logging_concessions.osm
/home/moabi/osmtogeojson/osmtogeojson logging_concessions.osm > logging_concessions.geojson

# mining concessions
# osmosis --read-xml file=/var/www/planet/planet.latest.osm --tf accept-ways concession=mining --write-xml mining.osm
# /home/moabi/osmtogeojson/osmtogeojson mining.osm > mining.geojson

# oil concessions
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways concession=oil --used-node --write-xml oil_concessions.osm
/home/moabi/osmtogeojson/osmtogeojson oil_concessions.osm > oil_concessions.geojson

# palm oil
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways concession=agriculture --used-node --write-xml aggricultural_concessions.osm
/home/moabi/osmtogeojson/osmtogeojson aggricultural_concessions.osm > aggricultural_concessions.geojson

# road rehabilitation projects
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways highway=* --used-node --write-xml road_rehabilitation_projects.osm
/home/moabi/osmtogeojson/osmtogeojson road_rehabilitation_projects.osm > road_rehabilitation_projects.geojson

# protected areas
ogr2ogr -f GeoJSON protected_area.geojson /home/moabi/dependencies/DRC_Protected_Area_JULY_2013.shp

# energy transmission lines
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-ways energy=transmission_line --used-node --write-xml transmission_lines.osm
/home/moabi/osmtogeojson/osmtogeojson transmission_lines.osm > transmission_lines.geojson

# hydro power
osmosis --read-xml file=/var/www/planet/planet.latest.osm.gz --tf accept-nodes energy=dam --tf reject-ways  --write-xml hydropower.osm
/home/moabi/osmtogeojson/osmtogeojson hydropower.osm > hydropower.geojson

gzip -f *
