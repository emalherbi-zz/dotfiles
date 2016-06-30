#source common/functions.sh

sudo apt update 1>/dev/null 2>&1
print_checking "linux update"

sudo apt install ruby 1>/dev/null 2>&1
print_checking "ruby"
