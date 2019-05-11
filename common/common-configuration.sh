#! /bin/zsh

set -euo pipefail

chsh -s $(which zsh)

mkdir -p ~/code/personal/
mkdir -p ~/code/codurance/

# Rust
RUSTUP_TEMP="/temp/temp_rust.sh"
curl https://sh.rustup.rs -sSf > "$RUSTUP_TEMP"
chmod +x "$RUSTUP_TEMP"
"$RUSTUP_TEMP" -y
rm -f "$RUSTUP_TEMP"

# Rbenv
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
