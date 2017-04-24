source common/functions.sh

function installbrew() {
    brew install "${@}"
}

if [ "$OS" = "OSX" ]; then
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    sudo apt-get install -y build-essential curl git python-setuptools ruby
    sudo apt-get install -y linuxbrew-wrapper
fi
print_checking "brew"

if [ "$OS" = "OSX" ]; then
    brew tap caskroom/cask
    print_checking "caskroom/cask"
fi

if [ "$OS" = "OSX" ]; then
    brew install node
else
    sudo apt install -y nodejs
fi
print_checking "node"

installbrew wifi-password
print_checking "wifi-password"

if [ "$OS" = "OSX" ]; then
    installbrew subversion
    print_checking "svn"
fi

installbrew ant
print_checking "ant"

installbrew fish
if [ "$OS" = "OSX" ]; then
  chsh -s /usr/local/bin/fish # fish default shell
fi
print_checking "fish"

installbrew android-platform-tools
print_checking "android-platform-tools"

# Make sure we’re using the latest Homebrew.
brew update
print_checking "brew update"

# Upgrade any already-installed formulae.
brew upgrade
print_checking "brew update all packages"

# Remove outdated versions from the cellar.
brew cleanup
print_checking "brew remove outdated versions from the cellar"
