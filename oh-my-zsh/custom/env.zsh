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

# Fix NPM Permissions
export PATH=~/.npm-global/bin:$PATH

# MSSQL
export MSSQL_CLI_PASSWORD="KipperOrange1!"
export MSSQL_CLI_SERVER="192.168.1.20"
#export MSSQL_CLI_DATABASE="ECAT$PRIMARY"
export MSSQL_CLI_USER="LAB1\netsecadmin"
