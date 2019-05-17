#! /bin/bash

set -euo pipefail

sudo apt-get update
sudo apt-get -y upgrade

# Basic packages
sudo apt-get -y install zsh curl wget net-tools software-properties-common coreutils xclip libssl-dev libreadline-dev zlib1g-dev mercurial kdiff3 firefox unzip zip

# Install chrome
echo "deb [arch=amd64] http://dl.google.com/linux/chrome/deb/ stable main" > /etc/apt/sources.list.d/chrome.list
sudo wget -q -O - https://dl-ssl.google.com/linux/linux_signing_key.pub | apt-key add -
sudo apt-get -y update
sudo apt-get -y install google-chrome-stable

# Dot net packages
wget -q https://packages.microsoft.com/config/ubuntu/18.10/packages-microsoft-prod.deb
sudo dpkg -i packages-microsoft-prod.deb

sudo apt-get -y install apt-transport-https
sudo apt-get -y update
sudo apt-get -y install dotnet-sdk-2.2

# preparing for building emacs
sudo apt-get -y install build-essential
sudo apt-get -y build-dep emacs25

"common/common-configuration.sh"
