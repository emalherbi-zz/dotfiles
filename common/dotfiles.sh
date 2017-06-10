#!/bin/bash

source common/functions.sh

if [ "$OS" = "OSX" ]; then
    # .osx
    if [ -f "osx/.osx" ]; then
        sudo ln -sf $pwd/osx/.osx ~/.osx
        killall Finder
        print_checking "~/.osx"
    fi

    # .bash_profile
    if [ -f "system/.bash_profile" ]; then
        sudo ln -sf $pwd/system/.bash_profile ~/.bash_profile
        source ~/.bash_profile
        print_checking "~/.bash_profile"
        print_alert "For use on this session, type: source ~/.bash_profile"
    fi
else
    # .bash_aliases
    if [ -f "system/.bash_aliases" ]; then
        sudo ln -sf $pwd/system/.bash_aliases ~/.bash_aliases
        source ~/.bash_aliases
        print_checking "~/.bash_aliases"
        print_alert "For use on this session, type: source ~/.bash_aliases"
    fi
fi

# .inputrc
if [ -f "system/.inputrc" ]; then
    sudo ln -sf $pwd/system/.inputrc ~/.inputrc
    print_checking "~/.inputrc"
fi

# .gitconfig
if [ -f "git/.gitconfig" ]; then
    sudo ln -sf $pwd/git/.gitconfig ~/.gitconfig
    print_checking "~/.gitconfig"
fi

# .gitignore
if [ -f "git/.gitignore" ]; then
    sudo ln -sf $pwd/git/.gitignore ~/.gitignore
    # git config --global core.excludesfile ~/.gitignore
    print_checking "~/.gitignore"
fi

# .git-completion
if [ -f ".git-completion.bash" ]; then
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
    print_checking "~/.git-completion.bash"
fi

# .editorconfig
if [ -f "atom/.editorconfig" ]; then
    sudo ln -sf $pwd/atom/.editorconfig ~/.editorconfig
    print_checking "~/.editorconfig"
fi

# this file prevents the shell login message
sudo touch ~/.hushlogin
