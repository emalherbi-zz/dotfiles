#!/bin/bash

source common/functions.sh

install  "dbeaver" "brew cask install dbeaver-communit"

install  "google-chrome" "brew cask install google-chrome"

install  "vlc" "brew cask install vlc"

install  "the-unarchiver" "brew cask install the-unarchiver"

install  "transmission" "brew cask install transmission"

install  "virtualbox" "brew cask install virtualbox"

# Remove outdated versions from the cellar.
brew cleanup
print_checked "brew cask remove outdated versions from the cellar"
