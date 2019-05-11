#! /bin/zsh

set -euo pipefail

chsh -s $(which zsh)

mkdir -p ~/code/personal/
mkdir -p ~/code/codurance/

# Rust
curl https://sh.rustup.rs -sSf > temp_rust.sh
chmod +x temp_rust.sh
temp_rust.sh -y
rm -f temp_rust.sh

# Rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
