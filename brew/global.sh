#!/bin/bash

source common/functions.sh

if [ "$OS" = "OSX" ]; then
    print_checking_install  "homebrew" "which brew" "/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'"
else
    print_checking_install  "linuxbrew" "which brew" "sudo apt-get install -y build-essential curl file git python-setuptools ruby linuxbrew-wrapper"
fi

# Not Working With: brew ls --versions caskroom/cask
if [ "$OS" = "OSX" ]; then
    print_install  "caskroom/cask" "brew tap caskroom/cask"
fi

if [ "$OS" = "OSX" ]; then
    print_checking_install "node" "brew ls --versions node" "brew install node"
else
    print_checking_install "node" "which node" "sudo apt install -y nodejs-legacy npm"
fi

if [ "$OS" = "OSX" ]; then
    print_checking_install "svn" "brew ls --versions svn" "brew install subversion"
else
    print_checking_install "svn" "which svn" "sudo apt-get install -y subversion"
fi

print_checking_install "ant" "brew ls --versions ant" "brew install ant"

print_checking_install "gradle" "brew ls --versions gradle" "brew install gradle"

print_checking_install "vim" "brew ls --versions vim" "brew install vim"

if [ "$OS" = "OSX" ]; then
    print_checking_install "macvim" "brew ls --versions macvim" "brew install macvim --with-override-system-vim"
fi

print_checking_install "fish" "brew ls --versions fish" "brew install fish"

print_checking_install "wifi-password" "brew ls --versions wifi-password" "brew install wifi-password"

# Config

# Set Fish default shell
if brew ls --versions fish &> /dev/null; then
    print_checking "fish default shell"
else
    if [ "$OS" = "OSX" ]; then
      chsh -s /usr/local/bin/fish
    else
      chsh -s `which fish`
    fi
fi

# Make sure we’re using the latest Homebrew.
brew update
print_checking "brew update"

# Upgrade any already-installed formulae.
brew upgrade
print_checking "brew update all packages"

# Remove outdated versions from the cellar.
brew cleanup
print_checking "brew remove outdated versions from the cellar"
