#!/bin/bash

source common/functions.sh

print "Starting: Ruby"

# RubyGems
if [ "$OS" = "OSX" ]; then
    # sudo gem update -n /usr/local/bin
    print_checked "gem install"
else
    install_checked  "gem" "which gem" "sudo apt-get install ruby ruby-dev make build-essential gcc"
fi

# Jekyll
install_checked  "jekyll" "which jekyll" "sudo gem install jekyll bundler"

# RubyGems keeps old versions of gems, so feel free to do come cleaning after updating.
sudo gem cleanup
print_checked "gem remove outdated versions of gems"

print "Finished: Ruby"
