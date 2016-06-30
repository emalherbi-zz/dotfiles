source common/functions.sh

function install() {
	brew cask install "${@}" 1>/dev/null 2>&1
}

install google-chrome
msg_checking "google-chrome"

install google-chrome-canary
msg_checking "google-chrome-canary"

install imagealpha
msg_checking "imagealpha"

install imageoptim
msg_checking "imageoptim"

install iterm2
msg_checking "iterm2"

install macvim
msg_checking "macvim"

install miro-video-converter
msg_checking "miro-video-converter"

install atom
msg_checking "atom"

install the-unarchiver
msg_checking "the-unarchiver"

install tor-browser
msg_checking "tor-browser"

install transmission
msg_checking "transmission"

install ukelele
msg_checking "ukelele"

install virtualbox
msg_checking "virtualbox"

install vlc
msg_checking "vlc"
