# My dotfiles

## Instalation

```bash
$ git clone https://github.com/emalherbi/dotfiles.git && cd dotfiles
```

## How to run

#### Mac

```bash
$ sudo sh install
```

#### Linux

```bash
$ sudo bash install
```

## Git Aliases

```bash
$ git st ~ status -sb
$ git ci ~ commit -m
$ git br ~ branch
$ git df ~ diff
$ git lg ~ git log -pgit ps
$ git co ~ git checkout
$ git tree ~ git log --graph --pretty=oneline --decorate
$ git pom ~ git push origin master
$ git ps ~ git push
$ git pl ~ git pull
$ git pp ~ git !"echo 'Pull'; git pull; echo 'Push'; git push"
$ git amend ~ git commit --amend -C HEAD
$ git ll ~ git log --pretty=oneline --decorate --abbrev-commit --max-count=15
$ git lll ~ git git log --graph --pretty=format:'%Cred%h%Creset %an: %s - %Creset %C(yellow)%d%Creset %Cgreen(%cr)%Creset' --abbrev-commit --date=relative
$ git rn ~ git log -M
$ git short ~ git shortlog -s -n
```

## Utils

```bash
.bash_profile ✔
.gitconfig ✔
.gitignore_global ✔
```

## Gems e etc...

```
=> homebrew ✔
|  => cask ✔
|  => node ✔
|  => wifi-password ✔
|  => svn ✔
|  => ant ✔
|  => fish ✔
|  => android-platform-tools ✔
=> cask ✔
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
|  => jshint ✔
|  => csslint ✔
|  => vtop ✔
|  => nativefier ✔
|  => tmi ✔
=> ruby ✔
|  => gem ✔
|  => jekyll ✔
```

## License

Code is under [MIT](http://davidsonfellipe.mit-license.org) license and content is under [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
