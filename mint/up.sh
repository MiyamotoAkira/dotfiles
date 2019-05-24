#! /bin/bash

set -euo pipefail

sudo apt-get update
sudo apt-get -y upgrade

# Basic packages
sudo apt-get -y install \
     zsh \
     curl \
     wget \
     net-tools \
     software-properties-common \
     coreutils \
     xclip \
     libssl-dev \
     libreadline-dev \
     zlib1g-dev \
     mercurial \
     kdiff3 \
     firefox \
     unzip \
     zip \
     pandoc \
     silversearcher-ag \
     devscripts \
     jq \
     apt-transport-https \
     ca-certificates \
     gnupg-agent

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
debconf-set-selections <<< "postfix postfix/main_mailer_type string 'No configuration'"
debconf-set-selections <<< "postfix postfix/mailname string twoormore.eu"
sudo apt-get -y build-dep emacs25

#Install dropbox
curl -O https://linux.dropbox.com/packages/ubuntu/dropbox_2019.02.14_amd64.deb
#sudo mk-build-deps -i dropbox_2019.02.14_amd64.deb
sudo apt-get -y install libpango1.0-0
sudo dpkg -i dropbox_2019.02.14_amd64.deb

# installing docker
# curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# sudo add-apt-repository \
#    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#    $(lsb_release -cs) \
#    stable"
# sudo apt-get update
sudo apt-get install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
sudo systemctl start docker
sudo systemctl enable docker


"common/common-configuration.sh"
