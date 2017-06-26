#!/bin/bash

source common/functions.sh

print_start "Starting installation: OSX";

sudo softwareupdate -ia

print_finish "Finished Successfully: OSX";
