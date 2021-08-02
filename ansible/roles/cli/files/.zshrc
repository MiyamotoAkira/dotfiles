# Setup of oh my zsh
ZSH_THEME="akira"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# end of setup

# ruby
eval "$(rbenv init -)"
# python
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

# To disable bracketed paste on emacs
if [[ $TERM = dumb ]]; then
  unset zle_bracketed_paste
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

[[ -e ~/.phpbrew/bashrc ]] && source ~/.phpbrew/bashrc

[ ]
if [[ "$(uname -r)" == *"WSL2"* ]]; then
    export DISPLAY=$(cat /etc/resolv.conf | grep nameserver | awk '{print $2; exit;}'):0.0
fi



#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/home/akira/.sdkman/bin/sdkman-init.sh" ]] && source "/home/akira/.sdkman/bin/sdkman-init.sh"
