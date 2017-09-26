#!/bin/bash

function print {
	echo -e "\033[1;36m=> $1 \033[0m";
}

function print_alert {
	echo -e "\033[1;31m=> $1 ✖\033[0m";
}

function print_checked {
	echo -e "\033[1;32m=> $1 ✔\033[0m";
}

function install {
    while true; do
        read -p "Do you wish to install $1? [Y/n] " yn;
        case $yn in
            [Yy]* )
                print "Starting: $1";
                $2;
                print_checked "$1";
                break;;
            [Nn]* )
                print_alert "Canceled: $1";
                break;;
            * ) echo "Please answer Y [Yes] or N [No].";;
        esac
    done
}

function install_checked {
    if $2 &> /dev/null; then
        print_checked "$1"
    else
        while true; do
            read -p "Do you wish to install $1? [Y/n] " yn;
            case $yn in
                [Yy]* )
                    print "Starting: $1";
                    $3;
                    print_checked "$1";
                    break;;
                [Nn]* )
                    print_alert "Canceled: $1";
                    break;;
                * ) echo "Please answer Y [Yes] or N [No].";;
            esac
        done
    fi
}

if [ "$(uname -s)" = "Darwin" ]; then
    OS="OSX"
else
    OS=$(uname -s)
fi

pwd=$(pwd)
user=$(id -un)

# END
