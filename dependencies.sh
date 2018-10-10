#!/bin/bash

echo "installing dependencies..."
sudo apt-get update 

# python and awscli
sudo apt-get install -qq -y python-pip libpython-dev
sudo curl -O https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py
sudo pip install -q awscli==1.11.115 --upgrade # lock version

# jq json parser
sudo apt-get install jq

# global npm
sudo npm install -g yarn@1.7.0
sudo npm install -g merge-yaml-cli
sudo npm install -g aws-sdk
sudo npm install -g babel-cli
sudo npm install -g api-console-cli
