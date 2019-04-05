#!/bin/bash

#   assumes you have python3 installed already (via brew)
#   Before running, ensure pipinstall.sh has execute set
# > chmod +x pipinstall.sh
# > "./pipinstall.sh"

echo "pipinstall.sh script started"

echo "pip3 installation path:"
which pip3

pip3 install --requirement=python/requirements.txt

echo "List Pip3 Packages: "
pip3 list

echo "pipinstall.sh script finished"