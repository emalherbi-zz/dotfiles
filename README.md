# My dotfiles for Mac/Linux (Ubuntu)

## Instalation

```bash
$ git clone https://github.com/emalherbi/dotfiles.git && cd dotfiles
```

## How to run

#### Mac/Linux

```bash
$ bash install
```

## Git Aliases

```bash
$ git act ~ shortlog --numbered --summary --email --no-merges --since="6 months"
$ git ad  ~ add *
$ git adf ~ add * --force
$ git br  ~ branch
$ git brd ~ branch -d
$ git ch  ~ checkout
$ git chb ~ checkout -b
$ git cl  ~ clone
$ git co  ~ commit -m
$ git df  ~ diff
$ git me  ~ merge
$ git pl  ~ pull
$ git ps  ~ push
$ git st  ~ status -sb
```

## Docker Aliases

```bash
$ dcimg   ~ docker images
$ dcps    ~ docker ps
$ dcpsaq  ~ docker ps -a -q
$ dcstop  ~ docker stop
$ dcstart ~ docker start
$ dcrm    ~ docker rm
$ dcrmi   ~ docker rmi
$ dcup    ~ docker-compose up
$ dcupd   ~ docker-compose up -d
```

## SVN Aliases

```bash
$ svnup ~ svn update .
$ svnad ~ svn add * --force
$ svnco ~ svn commit -m
```

## Projects Aliases

```bash
$ sites          ~ cd $HOME/Sites/
$ sitesphp7      ~ cd $HOME/Sites/apache-php/www/html
$ sitesphp5      ~ cd $HOME/Sites/apache-php-mysql-phpmyadmin/www/html
$ sitesphp5mssql ~ cd $HOME/Sites/apache-php-mysql-mssql-phpmyadmin/www/html
```

## Mac Aliases

```bash
$ c            ~ clear
$ l            ~ ls -l
$ la           ~ ls -la
$ home         ~ cd ~
$ trash        ~ rm -fr ~/.Trash
$ ..           ~ cd ..
$ showfiles    ~ defaults write com.apple.finder AppleShowAllFiles -bool true && killall Finder
$ hidefiles    ~ defaults write com.apple.finder AppleShowAllFiles -bool false && killall Finder
$ cleanup      ~ find . -type f -name '*.DS_Store' -ls -delete
$ ips          ~ ifconfig -a | grep -o 'inet6\? \(\([0-9]\+\.[0-9]\+\.[0-9]\+\.[0-9]\+\)\|[a-fA-F0-9:]\+\)' | sed -e 's/inet6* //'
$ netlisteners ~ lsof -i -P | grep LISTEN
$ tm           ~ top -o vsize
$ tu           ~ top -o cpu
$ wheater      ~ curl "http://wttr.in/Pato_Branco"
$ chr          ~ chmod -R 777
```

## Linux Aliases

```bash
$ c       ~ clear
$ l       ~ ls -l
$ la      ~ ls -la
$ home    ~ cd ~
$ trash   ~ rm -rf ~/.local/share/Trash/*
$ ..      ~ cd ..
$ open    ~ nautilus
$ wheater ~ curl "http://wttr.in/Pato_Branco"
$ chr     ~ chmod -R 777
```

## Utils

```bash
.osx ✔
.bash_profile ✔
.bash_aliases ✔
.inputrc ✔
.gitconfig ✔
.gitignore ✔
.git-completion ✔
.editorconfig ✔
```

## Gems e etc

```
=> homebrew ✔
|  => cask ✔
|  => node ✔
|  => wifi-password ✔
|  => svn ✔
|  => ant ✔
|  => fish ✔
|  => android-platform-tools ✔
=> cask ✔ (only mac)
|  => google-chrome ✔
|  => google-chrome-canary ✔
|  => torbrowser ✔
|  => imagealpha ✔
|  => imageoptim ✔
|  => vlc ✔
|  => miro-video-converter ✔
|  => the-unarchiver ✔
|  => transmission ✔
|  => ukelele ✔
|  => virtualbox ✔
|  => iterm2 ✔
|  => macvim ✔
|  => atom ✔
=> node ✔
|  => grunt ✔
|  => grunt-init ✔
|  => bower ✔
|  => yeoman ✔
|  => vtop ✔
|  => nativefier ✔
|  => generator-play-ideia ✔
|  => generator-locawebstyle ✔
=> ruby ✔
|  => gem ✔
|  => jekyll ✔
```

## License

Code is under [MIT](http://davidsonfellipe.mit-license.org) license and content is under [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
