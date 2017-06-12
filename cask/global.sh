#!/bin/bash

source common/functions.sh

print_install  "java" "brew cask install java"

print_install  "android-platform-tools" "brew cask install android-platform-tools"

print_install  "android-sdk" "brew cask install android-sdk"

print_install  "google-chrome" "brew cask install google-chrome"

print_install  "google-chrome-canary" "brew cask install google-chrome-canary"

print_install  "torbrowser" "brew cask install torbrowser"

print_install  "imagealpha" "brew cask install imagealpha"

print_install  "imageoptim" "brew cask install imageoptim"

print_install  "vlc" "brew cask install vlc"

print_install  "miro-video-converter" "brew cask install miro-video-converter"

print_install  "the-unarchiver" "brew cask install the-unarchiver"

print_install  "transmission" "brew cask install transmission"

print_install  "ukelele" "brew cask install ukelele"

print_install  "virtualbox" "brew cask install virtualbox"

print_install  "iterm2" "brew cask install iterm2"

print_install  "macvim" "brew cask install macvim"

print_install  "atom" "brew cask install atom"

# Remove outdated versions from the cellar.
brew cleanup
print_checking "brew cask remove outdated versions from the cellar"
