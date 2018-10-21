#!/bin/bash

#gosu mongodb bash -c "/usr/local/mongodb/bin/mongod -f /etc/mongod.conf"
gosu mongodb bash -c "mongod -f /etc/mongod.conf"
#su - mongodb -s /bin/bash -c "/usr/local/mongodb/bin/mongod -f /etc/mongod.conf"
