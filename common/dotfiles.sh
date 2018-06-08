#!/bin/bash

source common/functions.sh

print "Starting: Dotfiles"

if [ "$OS" = "OSX" ]; then
    # .osx
    if [ -f "osx/.osx" ]; then
        sudo ln -sf $pwd/osx/.osx ~/.osx
        killall Finder
        print_checked "~/.osx"
    fi

    # .bash_profile
    if [ -f "system/.bash_profile" ]; then
        sudo ln -sf $pwd/system/.bash_profile ~/.bash_profile
        source ~/.bash_profile
        print_checked "~/.bash_profile"
        print_alert "For use on this session, type: source ~/.bash_profile"
    fi
else
    # .bash_aliases
    if [ -f "system/.bash_aliases" ]; then
        sudo ln -sf $pwd/system/.bash_aliases ~/.bash_aliases
        source ~/.bash_aliases
        print_checked "~/.bash_aliases"
        print_alert "For use on this session, type: source ~/.bash_aliases"
    fi
fi

# svn
sudo cp $pwd/svn/svnignore.txt ~/

# .inputrc
if [ -f "system/.inputrc" ]; then
    sudo ln -sf $pwd/system/.inputrc ~/.inputrc
    print_checked "~/.inputrc"
fi

# .gitconfig
if [ -f "git/.gitconfig" ]; then
    sudo ln -sf $pwd/git/.gitconfig ~/.gitconfig
    print_checked "~/.gitconfig"
fi

# .gitignore
if [ -f "git/.gitignore" ]; then
    sudo ln -sf $pwd/git/.gitignore ~/.gitignore
    # git config --global core.excludesfile ~/.gitignore
    print_checked "~/.gitignore"
fi

# .git-completion
if [ -f ".git-completion.bash" ]; then
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
    print_checked "~/.git-completion.bash"
fi

# this file prevents the shell login message
sudo touch ~/.hushlogin

print "Finished: Dotfiles"
