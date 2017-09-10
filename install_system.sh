#general pacman
pacman -Syu

# git configuration
pacman -S git
cp config_files/gitconfig ~/.gitconfig 
cp config_files/gitignoreglobal ~/.gitignoreglobal

# ZSH configuration
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
cshs -s `which zsh`
cp config_files/akira.zsh-theme  ~/.oh-my-zsh/themes/
cp config_files/zshrc ~/.zshrc

#emacs
pacman -S emacs
cd ~
git clone http://github.com/miyamotoakira/.emacs.d

# rbenv configuration

# lein configuration
mkdir ~/bin
cp ~/code/nix_setup/scripts/lein  ~/bin
chmod a+x ~/bin/lein
lein

cp ~/code/nix_setup/config_files/lein_profiles.clj ~/.lein/profiles.clj -f

# python pip configuration
sudo python ~/code/nix_setup/scripts/get-pip.py
sudo pip install virtualenv
sudo pip install virtualenvwrapper
