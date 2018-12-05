# j3rmbadger ZSH Config
# Preferences
HYPHEN_INSENSITIVE="true"
export LANG=en_US.UTF-8
export ARCHFLAGS="-arch x86_64"
export SSH_KEY_PATH="$HOME/.ssh/rsa_id"
export ZSH=$HOME/.oh-my-zsh
ENABLE_CORRECTION="true"
export PATH=/usr/local/bin:$PATH
DISABLE_UNTRACKED_FILES_DIRTY="true" # don't track dirty
plugins=(git docker) # plugins
autoload zmv

# Environment
source $ZSH/oh-my-zsh.sh

if [[ -r /usr/share/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/share/powerline/bindings/zsh/powerline.zsh
fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# Add pyenv to PATH
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
