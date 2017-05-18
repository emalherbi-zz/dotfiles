source common/functions.sh

if which brew &> /dev/null; then
    print_checking "homebrew"
else
    if [ "$OS" = "OSX" ]; then
        /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        sudo apt-get install -y build-essential curl git python-setuptools ruby
        sudo apt-get install -y linuxbrew-wrapper
    fi
    print_checking "homebrew"
fi

if [ "$OS" = "OSX" ]; then
    print_install  "caskroom/cask" "brew tap caskroom/cask"
fi

if [ "$OS" = "OSX" ]; then
    print_install  "node" "brew install node"
else
    print_install  "node" "sudo apt install -y nodejs-legacy"
fi

print_install  "wifi-password" "brew install wifi-password"

if [ "$OS" = "OSX" ]; then
    print_install  "svn" "brew install subversion"
else
    print_install  "svn" "sudo apt-get install -y subversion"
fi

if [ "$OS" != "OSX" ]; then
    print_install  "python-svn" "sudo apt-get install python-svn"
    print_install  "svn-workbench" "sudo apt-get install svn-workbench"
fi

print_install  "ant" "brew install ant"

print_install  "fish" "brew install fish"
if [ "$OS" = "OSX" ]; then
  chsh -s /usr/local/bin/fish # fish default shell
fi

if [ "$OS" = "OSX" ]; then
    print_install  "vim" "brew install vim"
    print_install  "macvim" "brew install macvim --with-override-system-vim"
else
    print_install  "vim" "brew install vim"
fi

if [ "$OS" != "OSX" ]; then
    print_install  "emma" "sudo apt-get install -y emma"
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
