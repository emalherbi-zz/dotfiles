#!/bin/bash

source common/functions.sh

print_start "Starting: Linux"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

# aptitude
print_checking_install  "aptitude" "which aptitude" "sudo apt-get install -y aptitude"

print_checking_install  "xclip" "which xclip" "sudo aptitude install -y xclip"

# meld
print_checking_install  "meld" "which meld" "sudo apt-get install meld"

print_checking_install  "meld" "which meld" "sudo apt-get install intltool itstool gir1.2-gtksource-3.0 libxml2-utils"

# rar
print_checking_install  "rar" "which rar" "sudo apt-get install rar unrar"

# python-pip
print_checking_install  "python-pip" "which python-pip" "sudo apt install python-pip"

print_finish "Finished: Linux"
