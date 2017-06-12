#!/bin/bash

source common/functions.sh

print_checking_install  "aptitude" "which aptitude" "sudo apt-get install -y aptitude"

print_checking_install  "xclip" "which xclip" "sudo aptitude install -y xclip"
