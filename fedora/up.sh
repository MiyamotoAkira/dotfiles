#! /bin/bash

set -euo pipefail

sudo dnf -y groupinstall "C Development Tools and Libraries"
sudo dnf -y groupinstall "Development Tools"

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y groupupdate core
sudo dnf -y --best --allowerasing install \
     zsh \
     curl \
     wget \
     util-linux-user \
     mercurial \
     kdiff3 \
     openssl-devel \
     readline-devel \
     ffmpeg-libs \
     dnf-plugins-core \
     firefox \
     unzip \
     zip \
     pandoc \
     the_silver_searcher \
     vim-enhanced \
     gnome-tweak-tool \
     jq

# Install chrome
sudo dnf -y install fedora-workstation-repositories
sudo dnf -y config-manager --set-enabled google-chrome

# Dotnet packages
sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
wget -q https://packages.microsoft.com/config/fedora/27/prod.repo
sudo mv prod.repo /etc/yum.repos.d/microsoft-prod.repo
sudo chown root:root /etc/yum.repos.d/microsoft-prod.repo

sudo dnf -y update
sudo dnf -y install dotnet-sdk-2.2

sudo dnf -y builddep emacs

# Install dropbox
curl -O https://linux.dropbox.com/packages/fedora/nautilus-dropbox-2019.02.14-1.fedora.x86_64.rpm
sudo dnf -y install nautilus-dropbox-2019.02.14-1.fedora.x86_64.rpm

# installing docker
# sudo dnf config-manager \
#     --add-repo \
#     https://download.docker.com/linux/fedora/docker-ce.repo
sudo dnf install docker-ce docker-ce-cli containerd.io
sudo usermod -aG docker $USER
sudo systemctl start docker
sudo systemctl enable docker

"common/common-configuration.sh"
