# My dotfiles for Mac / Linux (Ubuntu)

## Manual Installation

Some programs require that the installation be done manually. Please perform this process before continuing.

- [MANUAL_INSTALLATION](./MANUAL_INSTALLATION.md)

## Instalation

```bash
$ git clone https://github.com/emalherbi/dotfiles.git && cd dotfiles
```

## How to run

### Mac / Linux

```bash
$ bash install
```

## Config

### Linux

After installation, you can configure the receiving of emails when you connect to the computer.

1. Edit file "linux/email-send-pc-start.sh", and change the email.

```bash
echo "Hello. Your computer $PC - $OS was connected at $DT." | mail -s "[$PC - $OS] Access $DT" email@email.com
```

2. Run the command below:

```bash
crontab -e
@reboot ~/email-send-pc-start.sh
```

Configure "ANDROID_HOME" and "JAVA_HOME" if necessary.

1. Edit file "system/.bash_aliases".

```bash
export ANDROID_HOME=${HOME}/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export JAVA_HOME='/usr/lib/jvm/java-8-openjdk-amd64/jre/bin/java'
```

### MAC

Configure "ANDROID_HOME" and "JAVA_HOME" if necessary.

1. Edit file "system/.bash_profile".

```bash
export ANDROID_HOME=${HOME}/Library/Android/sdk
export PATH=$PATH:$ANDROID_HOME/tools:$ANDROID_HOME/platform-tools
export JAVA_HOME='/Library/Java/JavaVirtualMachines/jdk1.8.0_152.jdk/Contents/Home'
```

## Aliases

[Mac](https://github.com/emalherbi/dotfiles/blob/master/system/.bash_profile)

[Linux](https://github.com/emalherbi/dotfiles/blob/master/system/.bash_aliases)

[Git](https://github.com/emalherbi/dotfiles/blob/master/git/.gitconfig)

## Utils

[.osx](https://github.com/emalherbi/dotfiles/blob/master/osx/.osx) ✔

[.bash_profile](https://github.com/emalherbi/dotfiles/blob/master/system/.bash_profile) ✔

[.bash_aliases](https://github.com/emalherbi/dotfiles/blob/master/system/.bash_aliases) ✔

[.inputrc](https://github.com/emalherbi/dotfiles/blob/master/system/.inputrc) ✔

[.gitconfig](https://github.com/emalherbi/dotfiles/blob/master/git/.gitconfig) ✔

[.gitignore](https://github.com/emalherbi/dotfiles/blob/master/git/.gitignore) ✔

[.git-completion](https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash) ✔

[.editorconfig](https://github.com/emalherbi/dotfiles/blob/master/atom/.editorconfig) ✔

## Gems e etc

```
=> linux ✔
|  => aptitude ✔
|  => xclip ✔
|  => meld ✔
|  => rar ✔
=> homebrew ✔
|  => cask ✔
|  => node ✔
|  => svn ✔
|  => ant ✔
|  => vim ✔
|  => macvim ✔
|  => wifi-password ✔
|  => findutils ✔
=> ruby ✔
|  => gem ✔
|  => jekyll ✔
=> node ✔
|  => grunt ✔
|  => grunt-init ✔
|  => bower ✔
|  => yeoman ✔
|  => ionic ✔
|  => vtop ✔
|  => nativefier ✔
|  => generator-play-ideia ✔
|  => generator-locawebstyle ✔
=> atom ✔
|  => atom-updater-linux ✔
|  => atom-beautify ✔
|  => docblockr ✔
|  => editorconfig ✔
|  => emmet ✔
|  => highlight-selected ✔
|  => linter-htmlhint ✔
|  => linter-jshint ✔
|  => minimap ✔
|  => minimap-highlight-selected ✔
|  => open-recent ✔
|  => todo-show ✔
|  => tree-ignore ✔
```

## License

Code is under [MIT](http://davidsonfellipe.mit-license.org) license and content is under [Creative Commons BY-SA 3.0](http://creativecommons.org/licenses/by-sa/3.0/deed.en_US)
