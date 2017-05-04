# general
alias c='clear'
alias l='ls -l'
alias la='ls -la'
alias home='cd ~'
alias trash='rm -fr ~/.Trash'
alias ..='cd ..'

# finder
alias showfiles='defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder'
alias hidefiles='defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder'
alias cleanup="find . -type f -name '*.DS_Store' -ls -delete"

# net
alias ips="ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'"
alias netlisteners='lsof -i -P | grep LISTEN'

# projects
alias sites='cd $HOME/Sites/'

# processes
alias tm='top -o vsize' # memory
alias tu='top -o cpu' # cpu

# wheater
alias weatherpb='curl "http://wttr.in/Pato_Branco"'

# utils
alias chr='sudo chmod -R 777'

# docker
alias dcimg='sudo docker images'
alias dcps='sudo docker ps'
alias dcpsaq='sudo docker ps -a -q'
alias dcstop='sudo docker stop'
alias dcstart='sudo docker start'
alias dcrm='sudo docker rm'
alias dcrmi='sudo docker rmi'
alias dcup='sudo docker-compose up'
alias dcupd='sudo docker-compose up -d'

# svn
alias svnup='sudo svn update .'
alias svnad='sudo svn add * --force'
alias svnco='sudo svn commit -m'
