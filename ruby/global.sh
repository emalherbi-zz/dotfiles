#!/bin/bash

source common/functions.sh

print "Starting: Ruby"

# RubyGems
print_checked "gem install"

# Jekyll
install_checked  "jekyll" "which jekyll" "sudo gem install jekyll bundler"

# RubyGems keeps old versions of gems, so feel free to do come cleaning after updating.
sudo gem cleanup
print_checked "gem remove outdated versions of gems"

print "Finished: Ruby"
