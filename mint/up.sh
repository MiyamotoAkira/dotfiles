#! /bin/bash

set -euo pipefail

sudo apt-get -y install python3-requests
sudo apt-get update
sudo apt-get -y upgrade

sudo apt-add-repository --yes ppa:ansible/ansible
sudo apt update
sudo apt autoremove -y
sudo apt -y install ansible

ansible-playbook ansible/full.yml
# # Basic packages
# sudo apt-get -y install \
#      zlib1g-dev \
#      kdiff3 \
#      pandoc \
#      apt-transport-https \
#      ca-certificates \
#      gnupg \
#      gnupg-agent \
#      python-requests

# # Dot net packages
# wget -q https://packages.microsoft.com/config/ubuntu/18.04/packages-microsoft-prod.deb
# sudo dpkg -i packages-microsoft-prod.deb

# sudo add-apt-repository -y universe
# sudo apt-get -y update
# sudo apt-get -y install apt-transport-https
# sudo apt-get -y update
# sudo apt-get -y install dotnet-sdk-3.0

# # Mono
# sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys 3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF
# echo "deb https://download.mono-project.com/repo/ubuntu stable-bionic main" | sudo tee /etc/apt/sources.list.d/mono-official-stable.list
# sudo apt update
# sudo apt-get -y install mono-complete

# # preparing for building emacs
# debconf-set-selections <<< "postfix postfix/main_mailer_type string 'No configuration'"
# debconf-set-selections <<< "postfix postfix/mailname string twoormore.eu"
# sudo apt-get -y build-dep emacs25

# #Install dropbox
# # curl -O https://linux.dropbox.com/packages/ubuntu/dropbox_2019.02.14_amd64.deb
# # sudo mk-build-deps -i dropbox_2019.02.14_amd64.deb
# # sudo apt-get -y install libpango1.0-0
# # sudo dpkg -i dropbox_2019.02.14_amd64.deb
# sudo apt-get -y install nautilus-dropbox


# # installing docker
# # curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
# # sudo add-apt-repository \
# #    "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
# #    $(lsb_release -cs) \
# #    stable"
# # sudo apt-get update
# # sudo apt-get install docker-ce docker-ce-cli containerd.io
# # sudo usermod -aG docker $(whoami)
# # sudo systemctl start docker
# # sudo systemctl enable docker

# sudo apt-get -y install gconf2 gconf-service libnotify4 gvfs-bin libappindicator1 libsecret-1-0
# curl -O https://downloads.slack-edge.com/linux_releases/slack-desktop-3.4.2-amd64.deb
# sudo dpkg -i slack-desktop-3.4.2-amd64.deb

# "common/common-configuration.sh"
