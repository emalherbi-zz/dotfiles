source common/functions.sh

sudo apt-get update
sudo apt-get upgrade
sudo apt-get dist-upgrade

print_install  "node" "sudo apt install -y nodejs-legacy"

print_install  "svn" "sudo apt-get install -y subversion"

print_install  "emma" "sudo apt-get install -y emma"
