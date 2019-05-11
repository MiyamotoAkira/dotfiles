#! /bin/bash

set -euo pipefail

sudo apt-get update
sudo apt-get -y upgrade

# Basic packages
sudo apt-get -y install zsh curl wget net-tools software-properties-common coreutils xclip libssl-dev libreadline-dev zlib1g-dev mercurial kdiff3


# Dot net packages
wget -q https://packages.microsoft.com/config/ubuntu/18.10/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get install apt-transport-https
sudo apt-get update
sudo apt-get install dotnet-sdk-2.2

"common/common-configuration.sh"
