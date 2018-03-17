# Custom Environment Variables
# j3rmbadger

export NOTESROOT=$HOME/git/j3rm-notes/2018

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
export FZF_CTRL_T_OPTS="--preview '(highlight -O ansi -l {} 2> /dev/null || cat {} || tree -C {}) 2> /dev/null | head -200'"
export FZF_TMUX=1 # open FZF in Split-Pane
export FZF_ALT_C_OPTS="--preview 'tree -C {} | head -200'" # uses tree command to show the entries of the directory.
export VBOX_PROGRAM_PATH=/usr/local/bin/virtualbox
export VBOX_SDK_PATH=/Users/jdw5843/Downloads/sdk
