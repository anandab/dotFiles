# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="wedisagree"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
#DISABLE_LS_COLORS="false"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git vi-mode node git-flow extract brew battery)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...
# PATHS
export PATH=/usr/local/bin:/usr/bin:/bin:/usr/local/sbin:/usr/sbin:/sbin:/usr/bin/core_perl:/usr/share/pear
PATH=$HOME/.rvm/bin:$PATH # Add RVM to PATH for scripting
PATH="$(brew --prefix php54)/bin:$PATH" # Add RVM to PATH for scripting
PATH="$(brew --prefix mysql)/bin:$PATH" # Add RVM to PATH for scripting
# LOCALE
export LC_CTYPE=en_US.UTF-8
# Editor
export EDITOR="vim"
# Customized stuffs
. ~/.zsh/aliases
. ~/.zsh/functs
. ~/.zsh/configs

# RVM
[[ -s '/Users/nXqd/.rvm/scripts/rvm' ]] && source '/Users/nXqd/.rvm/scripts/rvm'
