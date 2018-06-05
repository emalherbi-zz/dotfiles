#!/bin/bash

source common/functions.sh

print "Starting: Linux Others"

# Aptitude
install_checked  "aptitude" "which aptitude" "sudo apt-get install -y aptitude"

# Aptitude xclip
install_checked  "xclip" "which xclip" "sudo aptitude install -y xclip"

# Meld
install_checked  "meld" "which meld" "sudo apt-get install meld"
install_checked  "meld" "which meld" "sudo apt-get install intltool itstool gir1.2-gtksource-3.0 libxml2-utils"

# Rar
install_checked  "rar" "which rar" "sudo apt-get install rar unrar"

# Mail utils
install_checked  "mailutils" "which mailutils" "sudo apt-get install mailutils"

# Boot Repair
install_checked  "boot-repair" "which boot-repair" "sudo apt-get install boot-repair"

# Send email when pc start
sudo cp $pwd/linux/email-send-pc-start.sh ~/email-send-pc-start.sh
sudo chmod -R 777 ~/email-send-pc-start.sh
print_checked "~/email-send-pc-start.sh"

print "Finished: Linux Others"
