# j3rmbadger ZSH Config
#
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
eval "$(pyenv init -)" # pyenv
eval "$(rbenv init -)" # rbenv
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh # fuzzyfinder
if [ -f '/Users/jdw5843/google-cloud-sdk/path.zsh.inc' ]; then source '/Users/jdw5843/google-cloud-sdk/path.zsh.inc'; fi # PATH for gcloud tools
if [ -f '/Users/jdw5843/google-cloud-sdk/completion.zsh.inc' ]; then source '/Users/jdw5843/google-cloud-sdk/completion.zsh.inc'; fi # Completion for gcloud

# export PATH="/Users/jdw5843/.badgerscripts:$PATH"
