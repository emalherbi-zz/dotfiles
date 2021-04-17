# MAC
#
# general
alias ..='cd ..'
alias c='clear'
alias chr='sudo chmod -R 777'
alias chw="sudo chown -R $user:"
alias home='cd ~'
alias l='ls -a'
alias ll='ls -l'
alias lll='ls -la'
alias u='id -un'
alias rimraf='sudo rm -rf'
alias gg='open "http://www.google.com"'
alias ipConfig="ifconfig | grep 'inet ' | grep -Fv 127.0.0.1 | awk '{print $2}'"
alias trash='sudo rm -fr ~/.Trash'

# finder
alias showFiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hideFiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# processes
alias tm='top -o vsize' # memory
alias tu='top -o cpu' # cpu

# wheater
alias weather='curl "http://wttr.in/Pato_Branco"'

# projects
alias sites='cd $HOME/Sites/'
alias www='cd $HOME/Sites/www'
alias dotfiles='cd $HOME/Sites/dotfiles'

# php
alias composer='php /usr/local/bin/composer.phar'

# docker
alias dcwww='cd $HOME/Sites/dockers'
alias dcup='sudo docker-compose up -d --force-recreate'
alias dcupf='sudo docker-compose up -d --build --force-recreate'
alias dc='sudo docker ps'
alias dcrm='sudo docker rm $(sudo docker ps -a -q)'
alias dcrmi='sudo docker rmi $(sudo docker images -q)'
alias dcstop='sudo docker stop $(sudo docker ps -a -q)'
alias dcstart='sudo docker start $(sudo docker ps -a -q)'

# svn
alias svnad='sudo svn add * --force'
alias svnco='sudo svn commit -m'
alias svnst='sudo svn status'
alias svnup='sudo svn update .'
alias svnignoreset="sudo svn propset svn:ignore -F svnignore.txt ."
alias svnignorecopy="sudo cp ~/svnignore.txt ."

# net
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias netlisteners='lsof -i -P | grep LISTEN'

# export ANDROID_SDK_ROOT=${HOME}/Android/Sdk
# export PATH=$PATH:$ANDROID_SDK_ROOT/tools:$ANDROID_SDK_ROOT/platform-tools
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_211.jdk/Contents/Home'
