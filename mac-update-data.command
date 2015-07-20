#!/bin/sh
cd -- "$(dirname "$BASH_SOURCE")"
vagrant ssh -c "carto/vagrantupdate.sh"
