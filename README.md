# My dotfiles for Mac

## Manual Installation

Some programs require that the installation be done manually. Please perform this process before continuing.

- [Android Studio](https://developer.android.com/studio/install.html?hl=pt-br)
- [xCode](https://developer.apple.com/xcode/)
- [PHP Composer](https://getcomposer.org/download/)
- [PHP CS Fixer](https://github.com/FriendsOfPHP/PHP-CS-Fixer)
- [PHP Unit](https://phpunit.de/getting-started.html)

## Instalation

```bash
$ git clone https://github.com/emalherbi/dotfiles.git && cd dotfiles
```

## How to run

```bash
$ bash install
```

## Config

Configure "ANDROID_HOME" and "JAVA_HOME" if necessary.

1. Edit file "system/.bash_profile".

```bash
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home'
```

## Aliases

[Mac](https://github.com/emalherbi/dotfiles/blob/master/system/.bash_profile)

[Git](https://github.com/emalherbi/dotfiles/blob/master/git/.gitconfig)

## Utils

[.osx](https://github.com/emalherbi/dotfiles/blob/master/osx/.osx) ✔

[.gitconfig](https://github.com/emalherbi/dotfiles/blob/master/git/.gitconfig) ✔

[.gitignore](https://github.com/emalherbi/dotfiles/blob/master/git/.gitignore) ✔

[.git-completion](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash) ✔

[.bash_profile](https://github.com/emalherbi/dotfiles/blob/master/system/.bash_profile) ✔

[.inputrc](https://github.com/emalherbi/dotfiles/blob/master/system/.inputrc) ✔

## Cask

```
=> cask ✔
|  => java ✔
|  => docker ✔
|  => iterm2 ✔
|  => visual-studio-code ✔
|  => dbeaver ✔
|  => github ✔
|  => the-unarchiver ✔
|  => google-chrome ✔
|  => vlc ✔
|  => transmission ✔
|  => ccleaner ✔
```

## Gems e etc

```
=> homebrew ✔
|  => cask ✔
|  => docker-compose ✔
|  => node ✔
|  => yarn ✔
|  => svn ✔
|  => ant ✔
|  => vim ✔
|  => wifi-password ✔
|  => 7zip ✔
|  => findutils ✔
=> ruby ✔
|  => gem ✔
|  => jekyll ✔
=> node ✔
|  => npm-check ✔
|  => grunt ✔
|  => grunt-init ✔
|  => bower ✔
|  => yeoman ✔
|  => ionic ✔
|  => vtop ✔
|  => nativefier ✔
|  => generator-play-ideia ✔
|  => generator-locawebstyle ✔
|  => speed-test ✔
```

## License

Code is under [MIT](http://davidsonfellipe.mit-license.org) license and content is under [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
