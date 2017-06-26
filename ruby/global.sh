#!/bin/bash

source common/functions.sh

print_start "Starting installation: Ruby";

if [ "$OS" = "OSX" ]; then
    print_checking_install  "gem" "which gem" "sudo gem update --system"
else
    print_checking_install  "gem" "which gem" "sudo apt-get install ruby ruby-dev make gcc"
fi

print_checking_install  "jekyll" "which jekyll" "sudo gem install jekyll bundler"

print_finish "Finished Successfully: Ruby";
