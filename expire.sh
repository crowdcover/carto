#!/bin/sh

rm /home/moabi/expire.list

# Create replication.
cd ~/app/replicate;~/app/osmosis/bin/osmosis -q --replicate-apidb authFile=dbAuth.txt allowIncorrectSchemaVersion=true validateSchemaVersion=no --write-replication workingDirectory=data;

# Apply replication and generate expire.list
~/app/osmosis/bin/osmosis --read-replication-interval workingDirectory=/home/moabi/.osmosis --simplify-change --write-xml-change /home/moabi/changes.osc.gz&&osm2pgsql --append -k --slim -C 1800 --number-processes 6 -d gis -U gis /home/moabi/changes.osc.gz -e15 -o /home/moabi/expire.list;

# Read tiles.list and expire.
while read -r line
do
    cat /home/moabi/expire.list | /home/moabi/src/mod_tile/render_expired --map=$line --min-zoom=2;
done < /home/moabi/tiles.list

# List all the grids and clear them based on expire.list
grep -o '^    ".*":$' /home/moabi/tilestache.cfg | grep -E -o '[a-z_]+' > /home/moabi/grids.list
while read -r line
do
    /usr/local/bin/tilestache-clean.py --config=/home/moabi/tilestache.cfg --bbox=-35.8 52.0 37.7 -26.0 --tile-list=/home/moabi/expire.list --layer=$line -q -e json;
done < /home/moabi/grids.list