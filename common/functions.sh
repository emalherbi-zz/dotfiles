#!/bin/bash

function print() {
	echo -e "\033[0;36m $1 \033[0m";
}

function print_start() {
	echo -e "\033[1;36m=> $1\033[0m";
}

function print_alert() {
	echo -e "\033[1;31m=> $1 ✖\033[0m";
}

function print_checking() {
	echo -e "\033[1;32m=> $1 ✔\033[0m";
}

function print_install() {
    while true; do
        read -p "Do you wish to install $1? [Y/n] " yn;
        case $yn in
            [Yy]* )
                print_start "Starting installation: $1";
                $2;
                print_checking "Successfully installed: $1";
                break;;
            [Nn]* )
                print_alert "Canceled: $1";
                break;;
            * ) echo "Please answer Y [Yes] or N [No].";;
        esac
    done
}

if [ "$(uname -s)" = "Darwin" ]; then
    OS="OSX"
else
    OS=$(uname -s)
fi

pwd=$(pwd)

# END
