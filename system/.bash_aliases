# general
alias c='clear'
alias l='ls -l'
alias la='ls -la'
alias home='cd ~'
alias trash='rm -rf ~/.local/share/Trash/*'
alias ..='cd ..'
alias open='nautilus'

# finder

# net

# projects
alias sites='cd $HOME/Sites/'
alias sitesphp7='cd $HOME/Sites/apache-php/www/html'
alias sitesphp5='cd $HOME/Sites/apache-php-mysql-phpmyadmin/www/html'
alias sitesphp5mssql='cd $HOME/Sites/apache-php-mysql-mssql-phpmyadmin/www/html'

# processes

# wheater
alias wheater='curl "http://wttr.in/Pato_Branco"'

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
