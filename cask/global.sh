#!/bin/bash

source common/functions.sh

install  "java" "brew cask install java"

install  "android-platform-tools" "brew cask install android-platform-tools"

install  "android-sdk" "brew cask install android-sdk"

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

install  "iterm2" "brew cask install iterm2"

install  "macvim" "brew cask install macvim"

install  "atom" "brew cask install atom"

# Remove outdated versions from the cellar.
brew cleanup
print_checked "brew cask remove outdated versions from the cellar"
