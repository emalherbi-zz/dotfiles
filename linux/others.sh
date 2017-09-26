#!/bin/bash

source common/functions.sh

print "Starting: Linux Others"

# Aptitude
install_checked  "aptitude" "which aptitude" "sudo apt-get install -y aptitude"

# Aptitude xclip
install_checked  "xclip" "which xclip" "sudo aptitude install -y xclip"

# Meld
install_checked  "meld" "which meld" "sudo apt-get install meld"
install_checked  "meld" "which meld" "sudo apt-get install intltool itstool gir1.2-gtksource-3.0 libxml2-utils"

# Rar
install_checked  "rar" "which rar" "sudo apt-get install rar unrar"

print "Finished: Linux Others"
