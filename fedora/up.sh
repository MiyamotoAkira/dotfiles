#! /bin/bash

set -euo pipefail

sudo dnf -y upgrade 
sudo dnf -y install ansible

ansible-playbook ansible/full.yml
# sudo dnf -y groupinstall "C Development Tools and Libraries"
# sudo dnf -y groupinstall "Development Tools"

# sudo dnf -y install https://download1.rpmfusion.org/free/fedora/rpmfusion-free-release-$(rpm -E %fedora).noarch.rpm https://download1.rpmfusion.org/nonfree/fedora/rpmfusion-nonfree-release-$(rpm -E %fedora).noarch.rpm

# sudo dnf -y groupupdate core
# sudo dnf -y --best --allowerasing install \
#      zsh \
#      curl \
#      wget \
#      util-linux-user \
#      mercurial \
#      kdiff3 \
#      openssl-devel \
#      readline-devel \
#      ffmpeg-libs \
#      dnf-plugins-core \
#      firefox \
#      unzip \
#      zip \
#      pandoc \
#      the_silver_searcher \
#      vim-enhanced \
#      gnome-tweak-tool \
#      elixir\
#      bat \
#      exa \
#      jq

# # Install chrome
# sudo dnf -y install fedora-workstation-repositories
# sudo dnf -y config-manager --set-enabled google-chrome

# # Dotnet packages
# sudo rpm --import https://packages.microsoft.com/keys/microsoft.asc
# wget -q https://packages.microsoft.com/config/fedora/30/prod.repo
# sudo mv prod.repo /etc/yum.repos.d/microsoft-prod.repo
# sudo chown root:root /etc/yum.repos.d/microsoft-prod.repo

# sudo dnf -y update
# sudo dnf -y install dotnet-sdk-3.0

# # Install Mono
# sudo rpm --import "https://keyserver.ubuntu.com/pks/lookup?op=get&search=0x3FA7E0328081BFF6A14DA29AA6A19B38D3D831EF"
# sudo sh -c "curl https://download.mono-project.com/repo/centos8-stable.repo | tee /etc/yum.repos.d/mono-centos8-stable.repo"
# sudo dnf -y update
# sudo dnf -y install mono-complete

# # Preparation for Emacs
# sudo dnf -y builddep emacs

# # Install dropbox
# curl -O https://linux.dropbox.com/packages/fedora/nautilus-dropbox-2019.02.14-1.fedora.x86_64.rpm
# sudo dnf -y install nautilus-dropbox-2019.02.14-1.fedora.x86_64.rpm

# # installing docker
# # sudo dnf config-manager \
# #      --add-repo \
# #      https://download.docker.com/linux/fedora/docker-ce.repo
# # sudo dnf -y install docker-ce docker-ce-cli containerd.io
# # sudo usermod -aG docker $(whoami)
# # sudo systemctl start docker
# # sudo systemctl enable docker

# # install slack
# curl -O https://downloads.slack-edge.com/linux_releases/slack-3.4.2-0.1.fc21.x86_64.rpm
# sudo dnf -y install slack-3.4.2-0.1.fc21.x86_64.rpm

# "common/common-configuration.sh"
