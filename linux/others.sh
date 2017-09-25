#!/bin/bash

source common/functions.sh

print "Starting: Linux Others"

# Atom
# For linux install / update atom.
# On mac ins't necessary, because is update automatic.
# if [ "$OS" != "OSX" ]; then
#     ATOM_INSTALLED_VERSION=$(apt-cache show atom | grep "Version:" | cut -d ':' -f 2 | cut -d ' ' -f 2)
#     ATOM_LATEST_VERSION=$(wget -q "https://api.github.com/repos/atom/atom/releases/latest"  -O - | grep -E "https.*atom-amd64.tar.gz" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')
#
#     if [[ $ATOM_INSTALLED_VERSION < $ATOM_LATEST_VERSION ]]; then
#         wget -c https://github.com/atom/atom/releases/download/v${ATOM_LATEST_VERSION}/atom-amd64.deb -O /tmp/atom-amd64.deb
#         sudo dpkg -i /tmp/atom-amd64.deb
#         sudo apt-get -f install -y
#         rm /tmp/atom-amd64.deb
#     fi
# fi

# Aptitude
install_checked  "aptitude" "which aptitude" "sudo apt-get install -y aptitude"

# Aptitude xclip
install_checked  "xclip" "which xclip" "sudo aptitude install -y xclip"

# Meld
install_checked  "meld" "which meld" "sudo apt-get install meld"
install_checked  "meld" "which meld" "sudo apt-get install intltool itstool gir1.2-gtksource-3.0 libxml2-utils"

# RAR
install_checked  "rar" "which rar" "sudo apt-get install rar unrar"

# Python-pip
install_checked  "python-pip" "which python-pip" "sudo apt install python-pip"

print "Finished: Linux Others"
