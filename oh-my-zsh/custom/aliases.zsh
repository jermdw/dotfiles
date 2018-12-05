# Custom Aliases - j3rmbadger

# Editors
alias vimconfig='nvim ~/.config/nvim/init.vim'
alias edit='sudo nvim'

# ZSH
alias zshconfig='nvim ~/.zshrc'
alias aliasconfig='nvim ~/.oh-my-zsh/custom/aliases.zsh'
alias c='clear'

# Package Management
alias get='sudo apt install -y'
alias update='sudo apt update && sudo apt dist-upgrade -y'
alias search='apt-cache search'
alias clean='sudo apt autoremove -y'

# Navigation & CLI
alias cls='clear'
alias dirsize='du -d 1 -h'
alias ldir='ls -al | grep ^d'

# System Information
alias mem='free -h'
alias disk='df -h'

# Git
alias gc='git clone'
