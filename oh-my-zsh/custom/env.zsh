# Custom Environment Variables
# j3rmbadger

export VISUAL=nvim
export EDITOR=$VISUAL

# set gopath
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin:/usr/local/go/bin
export GOBIN=$GOPATH/bin

# Python shenanigans
eval "$(pipenv --completion)" # enable completion for pipenv

# FZF
# Using highlight (http://www.andre-simon.de/doku/highlight/en/highlight.html)
#export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
#export FZF_TMUX=1 # open FZF in Split-Pane
#export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'" # uses tree command to show the entries of the directory.

# Anaconda
export PATH=/home/honeybadger/anaconda3/bin:$PATH

# Fix NPM Permissions
 export PATH=~/.npm-global/bin:$PATH
