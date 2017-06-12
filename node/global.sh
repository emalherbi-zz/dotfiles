#!/bin/bash

source common/functions.sh

print_checking_install "grunt-cli" "npm list -g grunt-cli" "sudo npm install -g grunt-cli"

print_install  "grunt-init" "sudo npm install -g grunt-init"

print_install  "bower" "sudo npm install -g bower"

print_install  "yo" "sudo npm install -g yo"

print_install  "ionic" "sudo npm install -g cordova ionic"

print_install  "vtop" "sudo npm install -g vtop"

print_install  "nativefier" "sudo npm install -g nativefier"

print_install  "generator-play-ideia" "sudo npm install -g generator-play-ideia"

print_install  "generator-locawebstyle" "sudo npm install -g generator-locawebstyle"
