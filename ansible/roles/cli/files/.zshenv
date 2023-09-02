export ZSH="/home/akira/.oh-my-zsh"

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.cargo/env:$PATH"
export PATH="$HOME/.cargo/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.cask/bin:$PATH"
export PATH="$HOME/code/externals/tfenv/bin/:$PATH"
export PATH="$HOME/.tfenv/bin/:$PATH"
export PYENV_ROOT="$HOME/.pyenv"
command -v pyenv >/dev/null || export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

export PROJECT_HOME="$HOME/code"

export JAVA_HOME="/usr/lib/jvm/java-8-openjdk-amd64/"
export SDKMAN_DIR="/home/akira/.sdkman"

export PYENV_VIRTUALENV_DISABLE_PROMPT=1
export LD_LIBRARY_PATH=/usr/local/lib
