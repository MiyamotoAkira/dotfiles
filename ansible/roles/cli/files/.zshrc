# Setup of oh my zsh
ZSH_THEME="akira"

HIST_STAMPS="yyyy-mm-dd"

plugins=(git mercurial terraform)

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

vterm_printf(){
    if [ -n "$TMUX" ] && ([ "${TERM%%-*}" = "tmux" ] || [ "${TERM%%-*}" = "screen" ] ); then
        # Tell tmux to pass the escape sequences through
        printf "\ePtmux;\e\e]%s\007\e\\" "$1"
    elif [ "${TERM%%-*}" = "screen" ]; then
        # GNU screen (screen, screen-256color, screen-256color-bce)
        printf "\eP\e]%s\007\e\\" "$1"
    else
        printf "\e]%s\e\\" "$1"
    fi
}

if [[ "$INSIDE_EMACS" = 'vterm' ]]; then
    alias clear='vterm_printf "51;Evterm-clear-scrollback";tput clear'
fi


# We are in WSL.
if [ $(uname -r | sed -n 's/.*\( *Microsoft *\).*/\1/ip') ]; then
    # We want to fix the issue of colors with directories
    LS_COLORS="$LS_COLORS:ow=90;42:"
fi

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
[[ -s "/home/akira/.sdkman/bin/sdkman-init.sh" ]] && source "/home/akira/.sdkman/bin/sdkman-init.sh"
