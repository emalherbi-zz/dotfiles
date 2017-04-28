source common/functions.sh

function installcask() {
		brew cask install "${@}"
}

installcask google-chrome
print_checking "google-chrome"

installcask google-chrome-canary
print_checking "google-chrome-canary"

installcask torbrowser
print_checking "torbrowser"

installcask imagealpha
print_checking "imagealpha"

installcask imageoptim
print_checking "imageoptim"

installcask vlc
print_checking "vlc"

installcask miro-video-converter
print_checking "miro-video-converter"

installcask the-unarchiver
print_checking "the-unarchiver"

installcask transmission
print_checking "transmission"

installcask ukelele
print_checking "ukelele"

installcask virtualbox
print_checking "virtualbox"

installcask iterm2
print_checking "iterm2"

installcask macvim
print_checking "macvim"

installcask atom
print_checking "atom"
