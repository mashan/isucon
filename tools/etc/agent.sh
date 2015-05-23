#!/bin/bash

APPDIR=$(dirname $0)/..

#if [ -f $APPDIR/../../standalone/env.sh ]; then
#    . $APPDIR/../../standalone/env.sh
#else
#    export PATH=$PATH:/Users/tagomoris/.nvm/v0.4.11/bin
#    export NODE_PATH=/Users/tagomoris/node_modules/
#fi

USERNAME=vagrant
USER_HOME=/home/vagrant
NODE_VERSION=v0.12.3

export PATH=$PATH:$USER_HOME/.nvm/$NODE_VERSION/bin
export NODE_PATH=$NODE_PATH:$USER_HOME/node_modules/

cd $APPDIR
exec /home/vagrant/.nvm/versions/node/v0.12.3/bin/node agent.js
