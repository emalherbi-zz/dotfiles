source common/functions.sh

if which brew &> /dev/null; then
    print_checking "homebrew"
else
    if [ "$OS" = "OSX" ]; then
        print_install  "homebrew" "/usr/bin/ruby -e '$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)'"
    else
        print_install  "build-essential" "sudo apt-get install -y build-essential curl git python-setuptools ruby"
        print_install  "linuxbrew" "sudo apt-get install -y linuxbrew-wrapper"
    fi
fi

# TODO (Not Working With: brew ls --versions caskroom/cask)
if [ "$OS" = "OSX" ]; then
    print_install  "caskroom/cask" "brew tap caskroom/cask"
fi

if [ "$OS" = "OSX" ]; then
    if brew ls --versions node &> /dev/null; then
        print_checking "node"
    else
        print_install  "node" "brew install node"
    fi
else
    if which node &> /dev/null; then
        print_checking "node"
    else
        print_install  "node" "sudo apt install -y nodejs-legacy"
        print_install  "npm" "sudo apt-get install npm"
    fi
fi

if brew ls --versions wifi-password &> /dev/null; then
    print_checking "wifi-password"
else
    print_install  "wifi-password" "brew install wifi-password"
fi

if [ "$OS" = "OSX" ]; then
    if brew ls --versions svn &> /dev/null; then
        print_checking "svn"
    else
        print_install  "svn" "brew install subversion"
    fi
else
    if which svn &> /dev/null; then
        print_checking "svn"
    else
        print_install  "svn" "sudo apt-get install -y subversion"
    fi
fi

if brew ls --versions ant &> /dev/null; then
    print_checking "ant"
else
    print_install  "ant" "brew install ant"
fi

if brew ls --versions fish &> /dev/null; then
    print_checking "fish"
else
    print_install  "fish" "brew install fish"

    # fish default shell
    if [ "$OS" = "OSX" ]; then
      chsh -s /usr/local/bin/fish
    else
      chsh -s `which fish`
    fi
fi

if brew ls --versions vim &> /dev/null; then
    print_checking "vim"
else
    print_install  "vim" "brew install vim"

    if [ "$OS" = "OSX" ]; then
        print_install  "macvim" "brew install macvim --with-override-system-vim"
    fi
fi

# Make sure we’re using the latest Homebrew.
brew update
print_checking "brew update"

# Upgrade any already-installed formulae.
brew upgrade
print_checking "brew update all packages"

# Remove outdated versions from the cellar.
brew cleanup
print_checking "brew remove outdated versions from the cellar"
