source common/functions.sh

function installbrew() {
    brew install "${@}"
}

# homebrew
if which brew &> /dev/null; then
    print_checking "brew"
else
    if [ "$OS" = "OSX" ]; then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    else
        sudo apt install linuxbrew-wrapper
    fi
    print_checking "brew"
fi

# caskroom/cask
brew tap caskroom/cask
print_checking "caskroom/cask"

# wifi-password
installbrew wifi-password
print_checking "wifi-password"

# subversion
installbrew subversion
print_checking "svn"

# ant
installbrew ant
print_checking "ant"

# fish
installbrew fish
print_checking "fish"

# android-platform-tools
installbrew android-platform-tools
print_checking "android-platform-tools"

# Make sure we’re using the latest Homebrew.
brew update
print_checking "brew update"

# Upgrade any already-installed formulae.
brew upgrade --all
print_checking "brew update all packages"

# Remove outdated versions from the cellar.
brew cleanup
print_checking "brew remove outdated versions from the cellar"
