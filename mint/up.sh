#! /bin/bash

set -euo pipefail

sudo apt-get update
sudo apt-get -y upgrade

# Basic packages
sudo apt-get -y install zsh curl wget net-tools software-properties-common coreutils xclip libssl-dev libreadline-dev zlib1g-dev


"common/common-configuration.sh"
