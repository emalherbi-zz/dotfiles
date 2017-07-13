#!/bin/bash

source common/functions.sh

print_start "Starting: OSX"

sudo softwareupdate -ia

print_finish "Finished: OSX"
