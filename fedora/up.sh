#! /bin/bash

set -euo pipefail


sudo dnf -y groupupdate core
sudo dnf -y upgrade --best --allowerasing
sudo dnf -y --best --allowerasing install zsh

chsh -s $(which zsh)
