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
	echo  "\033[0;32m $1 \033[0m";
}
function print_ln() {
	echo  "\033[1;37m \033[0m";
	echo  "\033[1;37m=> $1\033[0m";
	echo  "\033[1;37m \033[0m";
}
function print_alert() {
	echo "\033[1;31m✖ $1 ✖\033[0m";
}
function print_checking() {
	echo  "\033[1;32m=> $1 ✔\033[0m";
}

if [ "$(uname -s)" = "Darwin" ]; then
    OS="OSX"
else
    OS=$(uname -s)
fi
