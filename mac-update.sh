#!/bin/sh
vagrant ssh -c "wget https://raw.githubusercontent.com/crowdcover/carto/master/vagrantupdate.sh?token=ACUaUjt334wT9BqpPqBVOzfxcjo0BXxKks5VqCbuwA%3D%3D"
vagrant ssh -c "mv vagrantupdate.sh?token* vagrantupdate.sh"
vagrant ssh -c "chmod +x vagrantupdate.sh"
vagrant ssh -c "./vagrantupdate.sh"
