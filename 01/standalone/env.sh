#!/bin/bash

USERNAME=vagrant
USER_HOME=/home/vagrant
NODE_VERSION=v0.12.3

export PATH=$PATH:$USER_HOME/.nvm/$NODE_VERSION/bin
export NODE_PATH=$NODE_PATH:$USER_HOME/node_modules/
