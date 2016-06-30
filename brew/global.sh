source common/functions.sh

# homebrew
if which brew &> /dev/null; then
    msg_checking "homebrew"
else
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)" 1>/dev/null 2>&1
    msg_checking "homebrew"
fi

# caskroom/cask
brew tap caskroom/cask 1>/dev/null 2>&1
msg_checking "caskroom/cask"

# wifi-password
brew install wifi-password 1>/dev/null 2>&1
msg_checking "wifi-password"

# subversion
brew install subversion 1>/dev/null 2>&1
msg_checking "svn"

# ant
brew install ant 1>/dev/null 2>&1
msg_checking "ant"

# fish
brew install fish 1>/dev/null 2>&1
msg_checking "fish"

# android-platform-tools
brew install android-platform-tools 1>/dev/null 2>&1
msg_checking "android-platform-tools"

# Make sure we’re using the latest Homebrew.
brew update 1>/dev/null 2>&1
msg_checking "homebrew update"

# Upgrade any already-installed formulae.
brew upgrade --all 1>/dev/null 2>&1
msg_checking "homebrew update all packages"

# Remove outdated versions from the cellar.
brew cleanup 1>/dev/null 2>&1
msg_checking "homebrew remove outdated versions from the cellar"
