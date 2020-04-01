#!/bin/sh

SCRIPT_DIR=$(dirname "$0")
MONGO_SERVICE=$1

#mongod --fork --logpath /var/log/mongodb.log --dbpath /data/db/

FILES=$SCRIPT_DIR/*-create.js
for f in $FILES; do mongo $MONGO_SERVICE -u $MONGODB_USER -p $MONGODB_PASSWORD $f; done

FILES=$SCRIPT_DIR/*-insert.js
for f in $FILES; do mongo $MONGO_SERVICE -u $MONGODB_USER -p $MONGODB_PASSWORD $f; done

