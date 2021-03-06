#! /bin/zsh

source $HOME/.cargo/env

set +e
rustup update
set -e
rustup install stable
set +e
rustup install nightly
set -e
rustup default stable

rustup component add rustfmt --toolchain stable

set +e
rustup component add rustfmt --toolchain nightly
set -e

~/.rbenv/bin/rbenv init -
~/.rbenv/bin/rbenv install 2.7.1
~/.rbenv/bin/rbenv global 2.7.1

# SDKMan
# curl -s "https://get.sdkman.io" | bash
# source "$HOME/.sdkman/bin/sdkman-init.sh"

# Terrafom
tfenv install latest

# Emacs
EMACS_TEMP_FOLDER="~/tmp/emacs"
mkdir -p "$EMACS_TEMP_FOLDER"
EMACS_TEMP="~/tmp/emacs-26.2.tar.gz"
curl https://mirrors.ocf.berkeley.edu/gnu/emacs/emacs-26.2.tar.gz -o "$EMACS_TEMP"
tar -xvzf "$EMACS_TEMP" -C "$EMACS_TEMP_FOLDER"

# Needs to be build from a no dockerize system due to issues with emacs build
# See:
# https://debbugs.gnu.org/cgi/bugreport.cgi?bug=23529
# https://stackoverflow.com/questions/37544423/how-to-build-emacs-from-source-in-docker-hub-gap-between-bss-and-heap
# cd $EMACS_TEMP_FOLDER/emacs-26.2/
# ./configure
# make
# sudo make install
# cd -
# Cask
# curl -fsSL https://raw.githubusercontent.com/cask/cask/master/go | python
