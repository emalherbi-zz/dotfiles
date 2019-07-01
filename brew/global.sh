#!/bin/bash

source common/functions.sh

print "Starting: Brew"

# ############################################################################ #
# ### Install
# ############################################################################ #

# Brew
if which brew &> /dev/null; then
    print_checked "homebrew"
else
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

# ############################################################################ #
# ### Cask Install
# ############################################################################ #

# Cask
brew tap caskroom/cask

# Java
install_checked "java" "brew cask ls --versions java" "brew cask install java"

# Docker
install_checked "docker" "brew cask ls --versions docker" "brew cask install docker"

# iTerm2
install_checked "iterm2" "brew cask ls --versions iterm2" "brew cask install iterm2"

# VSCode
install_checked "visual-studio-code" "brew cask ls --versions visual-studio-code" "brew cask install visual-studio-code"

# DBeaver
install_checked "dbeaver" "brew cask ls --versions dbeaver-community" "brew cask install dbeaver-community"

# Github
install_checked "github" "brew cask ls --versions github" "brew cask install github"

# The Unarchiver
install_checked "the-unarchiver" "brew cask ls --versions the-unarchiver" "brew cask install the-unarchiver"

# Chrome
install_checked "google-chrome" "brew cask ls --versions google-chrome" "brew cask install google-chrome"

# Transmission
install_checked "transmission" "brew cask ls --versions transmission" "brew cask install transmission"

# Ccleaner
install_checked "ccleaner" "brew cask ls --versions ccleaner" "brew cask install ccleaner"

# Caffeine
install_checked "caffeine" "brew cask ls --versions caffeine" "brew cask install caffeine"

# ############################################################################ #
# ### Brew Install
# ############################################################################ #

# Docker Compose
install_checked "docker-compose" "brew ls --versions docker-compose" "brew install docker-compose"

# Node
install_checked "node" "brew ls --versions node" "brew install node"

# Yarn
install_checked "yarn" "brew ls --versions yarn" "brew install yarn"

# Gradle
install_checked "gradle" "brew ls --versions gradle" "brew install gradle"

# SVN
install_checked "svn" "brew ls --versions svn" "brew install subversion"

# ANT
install_checked "ant" "brew ls --versions ant" "brew install ant"

# Vim
install_checked "vim" "brew ls --versions vim" "brew install vim"

# Wifi Password
install_checked "wifi-password" "brew ls --versions wifi-password" "brew install wifi-password"

# 7zip
install_checked "7zip" "brew ls --versions p7zip" "brew install p7zip"

# Findutils
install_checked "findutils" "brew ls --versions findutils" "brew install findutils"

# ############################################################################ #
# ### Update
# ############################################################################ #

# Make sure we’re using the latest Homebrew.
brew update
print_checked "brew update"

# Upgrade any already-installed formulae.
brew upgrade
print_checked "brew update all packages"

# Remove outdated versions from the cellar.
brew cleanup
print_checked "brew remove outdated versions from the cellar"

print "Finished: Brew"
