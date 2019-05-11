#! /bin/bash

set -euo pipefail

sudo dnf -y groupinstall "C Development Tools and Libraries"
sudo dnf -y groupinstall "Development Tools"

sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

sudo dnf -y groupupdate core
sudo dnf -y upgrade --best --allowerasing
sudo dnf -y --best --allowerasing install zsh

chsh -s $(which zsh)
