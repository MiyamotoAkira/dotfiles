#! /bin/bash

set -euo pipefail

sudo dnf -y groupinstall "C Development Tools and Libraries"
sudo dnf -y groupinstall "Development Tools"

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y groupupdate core
sudo dnf -y upgrade --best --allowerasing
sudo dnf -y --best --allowerasing install zsh

sudo dnf -y --best --allowerasing install curl wget util-linux-user mercurial kdiff3 openssl-devel readline-devel ffmpeg-libs dnf-plugins-core firefox unzip

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

"common/common-configuration.sh"
