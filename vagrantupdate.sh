#!/usr/bin/env bash
rm -f planet.latest.osm.gz
wget http://planet.osm.moabi.org/planet.latest.osm.gz
osm2pgsql --create --hstore-all --multi-geometry --slim --cache 64 --cache-strategy sparse --database moabi --style moabi.style planet.latest.osm.gz
