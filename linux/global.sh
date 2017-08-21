#!/bin/bash

source common/functions.sh

print "Starting: Linux"

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

print "Finished: Linux"
