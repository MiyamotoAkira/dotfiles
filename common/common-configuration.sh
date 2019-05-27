#! /bin/zsh

set -euo pipefail

chsh -s $(which zsh)

mkdir ~/bin/

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
# curl -s "https://get.sdkman.io" | bash
# source "$HOME/.sdkman/bin/sdkman-init.sh"

# Terrafom
curl -O https://releases.hashicorp.com/terraform/0.12.0/terraform_0.12.0_linux_amd64.zip
unzip terraform_0.12.0_linux_amd64.zip
sudo chmod a+x terraform
mv terraform ~/bin
rm terraform_0.12.0_linux_amd64.zip

# Link
curl -O https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein
sudo chmod a+x lein
mv lein ~/bin
mkdir ~/.lein
cp config_files/lein_profiles.clj ~/.lein/profiles.clj


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

# Oh my zsh
# https://github.com/robbyrussell/oh-my-zsh/issues/5873
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh | sed 's:env zsh -l::g' | sed 's:chsh -s .*$::g')"
cp config_files/akira.zsh-theme ~/.oh-my-zsh/themes

#copy zsh config files
cp config_files/zshenv ~/.zshenv
cp config_files/zshrc ~/.zshrc

