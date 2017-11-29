# MAC
#
# general
alias ..='cd ..'
# badblocks only linux
alias c='clear'
alias chr='sudo chmod -R 777'
alias gg='open "http://www.google.com"'
alias home='cd ~'
alias l='ls -l'
alias la='ls -la'
# open is native mac, only linux
alias rmrf='sudo rm -rf'
alias trash='sudo rm -fr ~/.Trash'
alias u='id -un'
alias ipcfg="ifconfig | grep 'inet ' | grep -Fv 127.0.0.1 | awk '{print $2}'"

# finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# processes
alias tm='top -o vsize' # memory
alias tu='top -o cpu' # cpu

# wheater
alias weather='curl "http://wttr.in/Pato_Branco"'

# projects
alias sites='cd $HOME/Sites/'
alias www='cd $HOME/Sites/docker/www/html'

# php
alias composer='php /usr/local/bin/composer.phar'

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
alias svndd="svn st | grep '^!' | awk '{print $2}' | xargs svn delete --force"

# git
alias gitchp='git diff --summary | grep --color "mode change 100755 => 100644" | cut -d" " -f7- | gxargs -d"\n" chmod +x'
alias gitchm='git diff --summary | grep --color "mode change 100644 => 100755" | cut -d" " -f7- | gxargs -d"\n" chmod -x'

# npm
alias npmuppkg='npm update --save-dev'

# net
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias netlisteners='lsof -i -P | grep LISTEN'
# netlist only linux
# netdown only linux
# netup only linux

export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home'
