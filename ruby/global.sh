#!/bin/bash

source common/functions.sh

if [ "$OS" = "OSX" ]; then
    print_checking_install  "gem" "which gem" "sudo gem update --system"
else
    print_checking_install  "gem" "which gem" "sudo apt-get install ruby ruby-dev make gcc"
fi

print_checking_install  "jekyll" "which jekyll" "sudo gem install jekyll bundler"
