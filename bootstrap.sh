#!/usr/bin/env bash

#Vagrant bootstrap file (don't run this on the server)
if [`hostname` != "vagrant-ubuntu-trusty-64"]; then
  echo "only runs on Vagrant!!"
  exit 1
fi
#install postgres
apt-get update
apt-get install -y postgresql postgis postgresql-9.3-postgis-2.1 wget git
#setup postgres users and database

sudo -u postgres -H sh -c "createuser vagrant -s"
sudo -u postgres -H sh -c "createuser $1 -s"
sudo -u postgres -H sh -c "createdb --owner vagrant moabi"
sudo -u postgres -H sh -c "psql -d moabi -c 'CREATE EXTENSION postgis; CREATE EXTENSION hstore;'"
#allow all postgres users to access
echo -e "local \t all \t all \t trust" >> /etc/postgresql/9.3/main/pg_hba.conf
echo -e "host \t all \t all \t all \t trust" >> /etc/postgresql/9.3/main/pg_hba.conf
echo "listen_addresses = '*'" >> /etc/postgresql/9.3/main/postgresql.conf
service postgresql restart
#install osm2pgsql
apt-get install -y autoconf automake libtool make g++ libboost-dev \
  libboost-system-dev libboost-filesystem-dev libboost-thread-dev libxml2-dev \
  libgeos-dev libgeos++-dev libpq-dev libbz2-dev libproj-dev
git clone git://github.com/openstreetmap/osm2pgsql.git
cd osm2pgsql/
git checkout tags/0.84.0
./autogen.sh
./configure && make && make install
cd ~vagrant
sudo -u vagrant -H sh -c "wget http://planet.osm.moabi.org/planet.latest.osm.gz"
sudo -u vagrant -H sh -c "wget https://raw.githubusercontent.com/crowdcover/carto/master/moabi.style?token=ACUaUnwI_rZWfGosf-cleUgIWwtoy6odks5VpVS_wA%3D%3D -o moabi.style"
sudo -u vagrant -H sh -c "mv moabi.style?token* moabi.style"
sudo -u vagrant -H sh -c "osm2pgsql --create --hstore-all --multi-geometry --slim --cache 64 --cache-strategy sparse --database moabi --style moabi.style planet.latest.osm.gz"
