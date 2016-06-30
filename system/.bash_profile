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

# sofwares
alias textedit='/Applications/TextEdit.app/Contents/MacOS/TextEdit'

# projects
alias sites='cd $HOME/Sites/'

# processes
alias tm='top -o vsize' # memory
alias tu='top -o cpu' # cpu

# mysql
alias mysqlstart='/usr/local/mysql/support-files/mysql.server start'
alias mysqlstop='/usr/local/mysql/support-files/mysql.server stop'
alias mysqlreload='mysqlstart && mysqlstop;'

# counter-line-code
alias linecodehtml='find . -name *.html | xargs wc -l'
alias linecodejs='find . -name *.js | xargs wc -l'
alias linecodecss='find . -name *.css | xargs wc -l'

# wheater
alias weatherpb='curl "http://wttr.in/Pato_Branco"'
