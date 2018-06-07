# j3rmbadger ZSH Config

# Preferences
HYPHEN_INSENSITIVE="true"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="~/.ssh/rsa_id"
export ZSH=$HOME/.oh-my-zsh
ENABLE_CORRECTION="true"
export PATH=/usr/local/bin:$PATH
ZSH_THEME="agnoster" # theme
DISABLE_UNTRACKED_FILES_DIRTY="true" # don't track dirty
plugins=(git docker encode64) # plugins

# Environment
source $ZSH/oh-my-zsh.sh
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"
#eval "$(rbenv init -)" # rbenv

#[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # fuzzyfinder

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/honeybadger/google-cloud-sdk/path.zsh.inc' ]; then source '/home/honeybadger/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/honeybadger/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/honeybadger/google-cloud-sdk/completion.zsh.inc'; fi

if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/share/powerline/bindings/zsh/powerline.zsh
fi
