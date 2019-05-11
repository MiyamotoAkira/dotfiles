#! /bin/zsh

set -euo pipefail

chsh -s $(which zsh)

#copy zsh config files
cp config_files/zshenv ~/.zshenv
cp config_files/zshrc ~/.zshrc
cp config_files/zprofile ~/.zprofile

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

# Rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv

~/.rbenv/bin/rbenv install 2.5.1
