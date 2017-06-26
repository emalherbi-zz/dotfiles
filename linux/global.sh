#!/bin/bash

source common/functions.sh

print_start "Starting installation: Linux";

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

print_finish "Finished Successfully: Linux";
