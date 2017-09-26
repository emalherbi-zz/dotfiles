#!/bin/bash

source common/functions.sh

print "Starting: Brew"

# ############################################################################ #
# ### Install
# ############################################################################ #

# Brew
if [ "$OS" = "OSX" ]; then
    install_checked  "homebrew" "which brew" "/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'"
else
    install_checked  "linuxbrew" "which brew" "sudo apt-get install -y build-essential curl file git python-setuptools ruby linuxbrew-wrapper"
fi

# Cask
if [ "$OS" = "OSX" ]; then
    install  "caskroom/cask" "brew tap caskroom/cask"
fi

# Node
if [ "$OS" = "OSX" ]; then
    install_checked "node" "brew ls --versions node" "brew install node"
else
    install_checked "node" "which node" "sudo apt install -y nodejs-legacy npm"
fi

# SVN
if [ "$OS" = "OSX" ]; then
    install_checked "svn" "brew ls --versions svn" "brew install subversion"
else
    install_checked "svn" "which svn" "sudo apt-get install -y subversion"
fi

# ANT
install_checked "ant" "brew ls --versions ant" "brew install ant"

# Vim
install_checked "vim" "brew ls --versions vim" "brew install vim"

# MacVim
if [ "$OS" = "OSX" ]; then
    install_checked "macvim" "brew ls --versions macvim" "brew install macvim --with-override-system-vim"
fi

# Fish
install_checked "fish" "brew ls --versions fish" "brew install fish"

# Wifi Password
install_checked "wifi-password" "brew ls --versions wifi-password" "brew install wifi-password"

# Findutils
if [ "$OS" = "OSX" ]; then
    install_checked "findutils" "brew ls --versions findutils" "brew install findutils"
fi

# ############################################################################ #
# ### Config
# ############################################################################ #

# Set fish default shell
if brew ls --versions fish &> /dev/null; then
    print_checked "fish default shell"
else
    if [ "$OS" = "OSX" ]; then
      chsh -s /usr/local/bin/fish
    else
      chsh -s /home/"$user"/.linuxbrew/bin/fish
    fi
fi

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
