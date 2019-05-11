#! /bin/zsh

set -euo pipefail

chsh -s $(which zsh)

#copy zsh config files
cp config_files/zshenv ~/.zshenv
cp config_files/zshrc ~/.zshrc

# Copy git config files
cp config_files/gitconfig ~/.gitconfig
cp config_files/gitignoreglobal ~/.gitignoreglobal

mkdir -p ~/code/personal/
mkdir -p ~/code/codurance/

# Rust
RUSTUP_TEMP="/tmp/temp_rust.sh"
curl https://sh.rustup.rs -sSf > "$RUSTUP_TEMP"
chmod +x "$RUSTUP_TEMP"
"$RUSTUP_TEMP" -y
rm -f "$RUSTUP_TEMP"

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

# Haskell
sudo curl -sSL https://get.haskellstack.org/ | sh

# Ruby and Rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
mkdir -p "$(~/.rbenv/bin/rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(~/.rbenv/bin/rbenv root)"/plugins/ruby-build

~/.rbenv/bin/rbenv init -
~/.rbenv/bin/rbenv install 2.5.1
~/.rbenv/bin/rbenv global 2.5.1

# SDKMan
curl -s "https://get.sdkman.io" | bash
source "$HOME/.sdkman/bin/sdkman-init.sh"
