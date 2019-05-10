#! /bin/bash

set -euo pipefail

sudo apt-get update
sudo apt-get -y upgrade
sudo apt-get -y install zsh

chsh -s $(which zsh)
