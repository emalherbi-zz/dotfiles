# Linux
#
# general
alias ..='cd ..'
alias badblocks='badblocks -sv -c 1024'
alias c='clear'
alias chr='sudo chmod -R 777'
alias chw="sudo chown -R $user:"
alias gg='sensible-browser "http://www.google.com"'
alias home='cd ~'
alias l='ls -a'
alias ll='ls -l'
alias lll='ls -la'
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
alias dotfiles='cd $HOME/Sites/dotfiles'

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
alias svndd="sudo svn st | grep '^!' | awk '{first=$1; $1=""; print $0}' | sed 's/^ *//;s/ *$//' | sed 's/ /\\ /g' | args sudo svn delete --force"

# git
alias gitchp='git diff --summary | grep --color "mode change 100755 => 100644" | cut -d" " -f7- | xargs -d"\n" chmod +x'
alias gitchm='git diff --summary | grep --color "mode change 100644 => 100755" | cut -d" " -f7- | xargs -d"\n" chmod -x'

# npm
alias npmup='rm -rf node_modules && rm -rf package-lock.json && npm update --save/--save-dev -f'
alias npmgout='npm outdated -g --depth=0 .'
alias npmgup='npm update -g .'

# net
# ips only mac
# netlisteners only mac
alias netlist='nmcli c'
alias netdown='nmcli c down'
alias netup='nmcli c up'

export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java'
