##################
# Code # Color   #
##################
#  00  # Off     #
#  30  # Black   #
#  31  # Red     #
#  32  # Green   #
#  33  # Yellow  #
#  34  # Blue    #
#  35  # Magenta #
#  36  # Cyan    #
#  37  # White   #
##################
function print() {
	echo -e "\033[0;32m $1 \033[0m";
}
function print_ln() {
	# echo -e "\033[1;37m \033[0m";
	echo -e "\033[1;37m=> $1\033[0m";
	# echo -e "\033[1;37m \033[0m";
}
function print_alert() {
	echo -e "\033[1;31m✖ $1 ✖\033[0m";
}
function print_checking() {
	echo -e "\033[1;32m=> $1 ✔\033[0m";
}
function print_install() {
  while true; do
      read -p "Do you wish to install $1? [Y/n] " yn
      case $yn in
          [Yy]* )
            print_ln "Install $1"
            $2
						print_checking "$1"
            break;;
          [Nn]* )
            print_alert "Cancel install $1"
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
