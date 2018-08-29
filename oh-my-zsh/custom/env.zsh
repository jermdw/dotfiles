# Custom Environment Variables
# ZSH
ZSH_THEME="agnoster" # theme

export VISUAL=nvim
export EDITOR=$VISUAL

# set gopath
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin
export GOBIN=$GOPATH/bin

# Python shenanigans
eval "$(pipenv --completion)" # enable completion for pipenv
export PATH="~/.pyenv/bin:$PATH"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"

# Anaconda
export PATH=/home/honeybadger/anaconda3/bin:$PATH

# Fix NPM Permissions
export PATH=~/.npm-global/bin:$PATH
