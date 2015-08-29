#!/bin/bash
APPDIR=$(dirname $0)/..

if [ -f $APPDIR/../../standalone/env.sh ]; then
    . $APPDIR/../../standalone/env.sh
else
    export PATH=$PATH:/Users/tagomoris/.nvm/v0.4.11/bin
    export NODE_PATH=/Users/tagomoris/node_modules/
fi

export NODE_PATH=$NODE_PATH:lib

cd $APPDIR
exec /home/vagrant/.nvm/versions/node/v0.12.3/bin/node bench.js "$@"
