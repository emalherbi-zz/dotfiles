#!/bin/bash

source common/functions.sh

print "Starting: Node"

sudo npm i -g npm
print_checked "npm update"

install_checked "grunt-cli" "npm list -g grunt-cli" "sudo npm install -g grunt-cli"

install_checked "grunt-init" "npm list -g grunt-init" "sudo npm install -g grunt-init"

install_checked "bower" "npm list -g bower" "sudo npm install -g bower"

install_checked "yo" "npm list -g yo" "sudo npm install -g yo"

install_checked "ionic" "npm list -g ionic" "sudo npm install -g cordova ionic"

install_checked "vtop" "npm list -g vtop" "sudo npm install -g vtop"

install_checked "nativefier" "npm list -g nativefier" "sudo npm install -g nativefier"

install_checked "generator-play-ideia" "npm list -g generator-play-ideia" "sudo npm install -g generator-play-ideia"

install_checked "generator-locawebstyle" "npm list -g generator-locawebstyle" "sudo npm install -g generator-locawebstyle"

print "Finished: Node"
