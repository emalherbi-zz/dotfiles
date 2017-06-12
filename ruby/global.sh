#!/bin/bash

source common/functions.sh

if [ "$OS" = "OSX" ]; then
  sudo gem update --system
else
  sudo apt-get install ruby ruby-dev make gcc
fi
print_checking "gem"

print_install  "jekyll" "sudo gem install jekyll bundler"
