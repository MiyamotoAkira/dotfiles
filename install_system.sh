#general pacman
sudo pacman -Syu

# git configuration
sudo pacman -S git

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
