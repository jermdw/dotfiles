# j3rmbadger ZSH Config

# THEME
ZSH_THEME="robbyrussell"

# GIT
DISABLE_UNTRACKED_FILES_DIRTY="true"

# PLUGINS
plugins=(git)
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"

# ZSH Location
export ZSH=$HOME/.oh-my-zsh

# Uncomment the following line to enable command auto-correction.
ENABLE_CORRECTION="true"

source $ZSH/oh-my-zsh.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/honeybadger/google-cloud-sdk/path.zsh.inc' ]; then source '/home/honeybadger/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/honeybadger/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/honeybadger/google-cloud-sdk/completion.zsh.inc'; fi
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"
