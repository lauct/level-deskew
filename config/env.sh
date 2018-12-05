#!/bin/zsh


# PATH

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

alias ls="ls -GFv" # ls -Gv
alias grep="grep --color=auto"
alias ll="ls -GFvlh"
alias catout="tail -f /Library/Tomcat/logs/catalina.out" # view tomcat cataout log
# set curator-cli env
export CURATOR_TOKEN=8d8beacf25a44ac6afad1b70b6698dbc
#/usr/local/share/npm/bin/curator-cli


# Eclipse PATH
export ANDROID_HOME=/Users/$USER/Library/Android/sdk
export PATH=${PATH}:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools

export PATH=$PATH:/usr/local/bin:/usr/local/sbin:/Users/chun/bin:/Users/chun/sh:/Users/chun/scripts:/Users/chun/.cabal/bin:/Users/chun/Library/Haskell/bin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/local/bin:/opt/X11/bin:/usr/local/git/bin:/Users/chun/sh:/usr/local/share/npm/bin:~/android-sdk/platform-tools:/usr/local/mymacportslink:

unalias gm

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting




# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Uncomment this to disable bi-weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment to change how often before auto-updates occur? (in days)
# export UPDATE_ZSH_DAYS=13

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want to disable command autocorrection
# DISABLE_CORRECTION="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Uncomment following line if you want to disable marking untracked files under
# VCS as dirty. This makes repository status check for large repositories much,
# much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)



# Virtual Environment
export WORKON_HOME=$HOME/.virtualenvs
export PROJECT_HOME=$HOME/Projects
source /usr/local/bin/virtualenvwrapper.sh

# Owner
export USER_NAME="YOUR NAME"
eval "$(rbenv init -)"

# FileSearch
function f() { find . -iname "*$1*" ${@:2} }
function r() { grep "$1" ${@:2} -R . }

#mkdir and cd
function mkcd() { mkdir -p "$@" && cd "$_"; }

# Aliases
alias cppcompile='c++ -std=c++11 -stdlib=libc++'

source $ZSH/oh-my-zsh.sh


#THIS MUST BE AT THE END OF THE FILE FOR GVM TO WORK!!!
[[ -s "/Users/chun/.gvm/bin/gvm-init.sh" ]] && source "/Users/chun/.gvm/bin/gvm-init.sh"
