#source common/functions.sh

function installbrew() {
    brew install "${@}" 1>/dev/null 2>&1
}

# homebrew
if which brew &> /dev/null; then
    print_checking "brew"
else
    if [ "$OS" = "OSX" ]; then
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 1>/dev/null 2>&1
    else
        ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Linuxbrew/install/master/install)" 1>/dev/null 2>&1

        export PATH="$HOME/.linuxbrew/bin:$PATH"
        export MANPATH="$HOME/.linuxbrew/share/man:$MANPATH"
        export INFOPATH="$HOME/.linuxbrew/share/info:$INFOPATH"
    fi
    print_checking "brew"
fi

# caskroom/cask
brew tap caskroom/cask 1>/dev/null 2>&1
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
brew update 1>/dev/null 2>&1
print_checking "brew update"

# Upgrade any already-installed formulae.
brew upgrade --all 1>/dev/null 2>&1
print_checking "brew update all packages"

# Remove outdated versions from the cellar.
brew cleanup 1>/dev/null 2>&1
print_checking "brew remove outdated versions from the cellar"
