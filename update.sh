#!/usr/bin/env bash

rm -f planet.latest.osm.gz
rm -f moabi.style
wget http://planet.osm.moabi.org/planet.latest.osm.gz
wget https://raw.githubusercontent.com/crowdcover/carto/master/moabi.style?token=ACUaUnwI_rZWfGosf-cleUgIWwtoy6odks5VpVS_wA%3D%3D -o moabi.style
mv moabi.style?token* moabi.style
osm2pgsql --create --hstore-all --multi-geometry --slim --cache 64 --cache-strategy sparse --database moabi --style moabi.style planet.latest.osm.gz
