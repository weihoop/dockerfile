#!/bin/bash
set -e 

chown mongodb:mongodb -R /data/ 

gosu mongodb bash -c "mongod -f /etc/mongod.conf"

#gosu mongodb bash -c "/usr/local/mongodb/bin/mongod -f /etc/mongod.conf"
