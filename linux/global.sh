#!/bin/bash

source common/functions.sh

print_start "Starting: Linux"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

print_checking_install  "aptitude" "which aptitude" "sudo apt-get install -y aptitude"

print_checking_install  "xclip" "which xclip" "sudo aptitude install -y xclip"

print_finish "Finished: Linux"
