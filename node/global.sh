#!/bin/bash

source common/functions.sh

print_start "Starting installation: Node";

print_checking_install "grunt-cli" "npm list -g grunt-cli" "sudo npm install -g grunt-cli"

print_checking_install "grunt-init" "npm list -g grunt-init" "sudo npm install -g grunt-init"

print_checking_install "bower" "npm list -g bower" "sudo npm install -g bower"

print_checking_install "yo" "npm list -g yo" "sudo npm install -g yo"

print_checking_install "ionic" "npm list -g ionic" "sudo npm install -g cordova ionic"

print_checking_install "vtop" "npm list -g vtop" "sudo npm install -g vtop"

print_checking_install "nativefier" "npm list -g nativefier" "sudo npm install -g nativefier"

print_checking_install "generator-play-ideia" "npm list -g generator-play-ideia" "sudo npm install -g generator-play-ideia"

print_checking_install "generator-locawebstyle" "npm list -g generator-locawebstyle" "sudo npm install -g generator-locawebstyle"

print_finish "Finished Successfully: Node";
