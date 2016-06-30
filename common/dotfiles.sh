source common/functions.sh

# .osx
if [ -f "osx/.osx" ]; then
    sudo ln -sf $HOME/Sites/dotfiles/osx/.osx ~/.osx
    killall Finder
    msg_checking "~/.osx"
fi

# .bash_profile
if [ -f "system/.bash_profile" ]; then
    sudo ln -sf $HOME/Sites/dotfiles/system/.bash_profile ~/.bash_profile
    source ~/.bash_profile
    msg_checking "~/.bash_profile"
    msg_alert "For use on this session, type: source ~/.bash_profile"
fi

# .inputrc
if [ -f "system/.inputrc" ]; then
    sudo ln -sf $HOME/Sites/dotfiles/system/.inputrc ~/.inputrc
    msg_checking "~/.inputrc"
fi

# .gitconfig
if [ -f "git/.gitconfig" ]; then
    sudo ln -sf $HOME/Sites/dotfiles/git/.gitconfig ~/.gitconfig
    msg_checking "~/.gitconfig"
fi

# .gitignore
if [ -f "git/.gitignore" ]; then
    sudo ln -sf $HOME/Sites/dotfiles/git/.gitignore ~/.gitignore
    git config --global core.excludesfile ~/.gitignore
    msg_checking "~/.gitignore"
fi

# .git-completion
if [ -f ".git-completion.bash" ]; then
    curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash
    msg_checking "~/.git-completion.bash"
fi

# .editorconfig
if [ -f "atom/.editorconfig" ]; then
    sudo ln -sf $HOME/Sites/dotfiles/atom/.editorconfig ~/.editorconfig
    msg_checking "~/.editorconfig"
fi

# this file prevents the shell login message
touch ~/.hushlogin
