#!/bin/bash

echo "installing AWS CLI..."
sudo apt-get update && sudo apt-get install -qq -y python-pip libpython-dev
sudo curl -O https://bootstrap.pypa.io/get-pip.py && sudo python get-pip.py
sudo pip install -q awscli --upgrade

# ecs-cli
sudo curl -o /usr/local/bin/ecs-cli https://s3.amazonaws.com/amazon-ecs-cli/ecs-cli-linux-amd64-latest
sudo chmod +x /usr/local/bin/ecs-cli

# ecs-deploy
sudo pip install ecs-deploy -y

# global npm
sudo npm install -g merge-yaml-cli
sudo npm install -g aws-sdk
