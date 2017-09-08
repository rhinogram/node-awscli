#!/bin/bash

echo "installing AWS CLI..."
sudo apt-get update && sudo apt-get install -qq -y python-pip libpython-dev
curl -O https://bootstrap.pypa.io/get-pip.py && python get-pip.py
sudo pip install -q awscli --upgrade
