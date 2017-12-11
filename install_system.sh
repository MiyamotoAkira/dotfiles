#general pacman
sudo pacman -Syu

# git configuration
sudo pacman -S git
sudo pacman -S kdiff3

mkdir ~/code -p
cd ~/code
git clone https://github.com/MiyamotoAkira/nix_setup.git

cp ~/code/nix_setup/config_files/gitconfig ~/.gitconfig 
cp ~/code/nix_setup/config_files/gitignoreglobal ~/.gitignoreglobal

# ZSH configuration
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cshs -s `which zsh`
cp ~/code/nix_setup/config_files/akira.zsh-theme  ~/.oh-my-zsh/themes/
cp ~/code/nix_setup/config_files/zshrc ~/.zshrc
#after the above a new terminal is needed

#emacs
cd ~
git clone https://github.com/MiyamotoAkira/.emacs.d.git
sudo pacman -S emacs

# rbenv configuration
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
cd ~/.rbenv && src/configure && make -C src
rbenv init
curl -fsSL https://github.com/rbenv/rbenv-installer/raw/master/bin/rbenv-doctor | bash
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build
rbenv install 2.4.2
rbenv global 2.4.2

# lein configuration
mkdir ~/bin
cp ~/code/nix_setup/scripts/lein  ~/bin
chmod a+x ~/bin/lein
lein

cp ~/code/nix_setup/config_files/lein_profiles.clj ~/.lein/profiles.clj -f

# python pip configuration
python ~/code/nix_setup/scripts/get-pip.py
sudo pip install virtualenv
sudo pip install virtualenvwrapper

#
sudo pacman -S base-devel
sudo pacman -S yaourt
yaourt slack-desktop

# To eliminate the hot corner on gnome
yaourt nohotcorner

# To create shortcut/launcher icons
sudo pacman -S alacarte


sudo pacman -S pandoc

# For Latex support
sudo pacman -S texlive-most
sudo pacman -S texlive-lang

#Elixir
sudo pacman -S elixir

# F#
yaourt dotnet-sdk-2.0
sudo pacman -S fsharp
yaourt nuget4

# Java
sudo pacman -S eclipse-java
yaourt eclim
sudo pacman -S maven
