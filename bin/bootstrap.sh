#!/bin/zsh

# Make sure we’re using the latest Homebrew
brew update

# Upgrade any already-installed formulae
brew upgrade

# Install GNU core utilities (those that come with OS X are outdated)
brew install coreutils
echo "Don’t forget to add $(brew --prefix coreutils)/libexec/gnubin to \$PATH."
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, g-prefixed
brew install findutils

# Update zsh
brew install zsh

# langauges
brew install python
brew install node

# Install wget with IRI support
brew install wget --enable-iri

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep
brew tap josegonzalez/homebrew-php

# Install everything else
brew install mecurial
brew install ack
brew install fasd
brew install git
brew install rename
brew install tree
brew install vim
brew install tmux
brew install rtorrent
brew install irssi
brew install unrar
brew install reattach-to-user-namespace
brew install task
brew install ctags
brew install imagemagick

# system monitor
brew install htop

# curl replacer
pip install --upgrade httpie

# Developments
brew install postgres --no-python
brew install rbenv
brew install ruby-build
brew install rbenv-gem-rehash

# rails critical gems
gem install bundler foreman zeus pg rails thin --no-rdoc --no-ri
# heroku
brew install heroku-toolbelt

# fun !!, no fun no work
gem install cloudapp_api
gem install gifme

# lint
npm install jshint
npm install csshint

# Remove outdated versions from the cellar
brew cleanup