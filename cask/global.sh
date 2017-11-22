#!/bin/bash

source common/functions.sh

if which atom &> /dev/null; then
    print_checked "atom"
else
    brew cask install atom
fi

install  "dbeaver" "brew cask install dbeaver-communit"

install  "google-chrome" "brew cask install google-chrome"

install  "google-chrome-canary" "brew cask install google-chrome-canary"

install  "torbrowser" "brew cask install torbrowser"

install  "imagealpha" "brew cask install imagealpha"

install  "imageoptim" "brew cask install imageoptim"

install  "vlc" "brew cask install vlc"

install  "miro-video-converter" "brew cask install miro-video-converter"

install  "the-unarchiver" "brew cask install the-unarchiver"

install  "transmission" "brew cask install transmission"

install  "ukelele" "brew cask install ukelele"

install  "virtualbox" "brew cask install virtualbox"

# Remove outdated versions from the cellar.
brew cleanup
print_checked "brew cask remove outdated versions from the cellar"
