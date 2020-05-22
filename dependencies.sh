#!/bin/bash

echo "installing dependencies..."
sudo apt-get update

# python and awscli
sudo apt-get install -qq -y python-pip libpython-dev
sudo curl -O https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py
sudo pip install -q awscli==1.16.180 --upgrade # lock version

# jq json parser
sudo apt-get install jq

# global npm
sudo npm install -g yarn@1.17.3
sudo npm install -g @babel/cli

# modify executable permissions
sudo chmod a+rwx  /usr/local/lib/node_modules/yarn/bin/yarn*
sudo chmod a+rwx  /usr/local/bin/yarn*
