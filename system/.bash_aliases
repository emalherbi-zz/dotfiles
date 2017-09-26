# Linux
#
# general
alias ..='cd ..'
alias badblocks='badblocks -sv -c 1024'
alias c='clear'
alias chr='sudo chmod -R 777'
alias gg='sensible-browser "http://www.google.com"'
alias home='cd ~'
alias l='ls -l'
alias la='ls -la'
alias open='nautilus'
alias rmrf='sudo rm -rf'
alias trash='sudo rm -rf ~/.local/share/Trash/*'
alias u='id -un'
alias ipcfg='ifconfig'

# finder
# showfiles only mac
# hidefiles only mac
# cleanup only mac

# processes
# tm only mac
# tu only mac

# wheater
alias wheater='curl "http://wttr.in/Pato_Branco"'

# projects
alias sites='cd $HOME/Sites/'
alias www='cd $HOME/Sites/docker/www/html'

# php
# composer only mac

# docker
alias dcwww='cd $HOME/Sites/docker'
alias dcimg='sudo docker images'
alias dcps='sudo docker ps'
alias dcpsaq='sudo docker ps -a -q'
alias dcrm='sudo docker rm'
alias dcrmall='sudo docker rm $(sudo docker ps -a -q)'
alias dcrmi='sudo docker rmi'
alias dcrmiall='sudo docker rmi $(sudo docker images -q)'
alias dcstop='sudo docker stop'
alias dcstopall='sudo docker stop $(sudo docker ps -a -q)'
alias dcstart='sudo docker start'
alias dcstartall='sudo docker start $(sudo docker ps -a -q)'
alias dcup='sudo docker-compose up'
alias dcupd='sudo docker-compose up -d'
alias dcupdf='sudo docker-compose up -d --force-recreate'
alias dcupall='sudo docker-compose up -d db && sleep 5 && sudo docker-compose up -d phpmyadmin && sleep 5 && sudo docker-compose up -d php'

# svn
alias svnad='sudo svn add * --force'
alias svnco='sudo svn commit -m'
alias svnst='sudo svn status'
alias svnup='sudo svn update .'
alias svndd='$( sudo svn status | sed -e "/^!/!d" -e "s/^!//" )'

# net
# ips only mac
# netlisteners only mac
alias netlist='nmcli c'
alias netdown='nmcli c down'
alias netup='nmcli c up'
function setproxy() {
    sudo sh -c "echo 'Acquire::http::proxy \"http://192.168.1.1:3128/\";' >> /etc/apt/apt.conf"
}
function unsetproxy() {
    sudo sh -c "sed -i '1d' /etc/apt/apt.conf"
}
