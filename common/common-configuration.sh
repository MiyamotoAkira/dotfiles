#! /bin/zsh

set -euo pipefail

chsh -s $(which zsh)

mkdir -p ~/code/personal/
mkdir -p ~/code/codurance/

# Rust
curl https://sh.rustup.rs -sSf | sh

# Rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
