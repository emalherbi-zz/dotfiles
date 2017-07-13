#!/bin/bash

source common/functions.sh

print_start "Starting: Ruby"

if [ "$OS" = "OSX" ]; then
    # Update to its latest version with.
    sudo gem update --system
    print_checking "gem update"
else
    print_checking_install  "gem" "which gem" "sudo apt-get install ruby ruby-dev make gcc"
fi

print_checking_install  "jekyll" "which jekyll" "sudo gem install jekyll bundler"

# RubyGems keeps old versions of gems, so feel free to do come cleaning after updating.
sudo gem cleanup
print_checking "gem remove outdated versions of gems"

print_finish "Finished: Ruby"
