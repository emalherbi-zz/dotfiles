source common/functions.sh

# homebrew
# The missing package manager for OS X
# http://brew.sh/
if which brew &> /dev/null; then
    msg_checking "homebrew"
else
    msg_install "Homebrew" "ruby -e $(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
    msg_ok "OK"
fi

# wifi-password
# People ask you for the Wi-Fi password. Answer quickly.
# https://github.com/rauchg/wifi-password
if which wifi-password &> /dev/null; then
    msg_checking "wifi-password"
else
    msg_install "wifi-password" "brew install wifi-password"
    brew install wifi-password
    msg_ok "OK"
fi

# subversion
# An open-source revision control system, which aims to be a compelling
# replacement for CVS.
# http://brewformulas.org/Subversion
if which subversion &> /dev/null; then
    msg_checking "subversion"
else
    msg_install "subversion" "brew install subversion"
    brew install subversion
    msg_ok "OK"
fi

# ant
# Apache Ant is a Java library and command-line tool whose mission is to drive
# processes described in build files as targets and extension points dependent
# upon each other.
# http://brewformulas.org/ant
if which ant &> /dev/null; then
    msg_checking "ant"
else
    msg_install "ant" "brew install ant"
    brew install ant
    msg_ok "OK"
fi

# fish
# Fish is a smart and user-friendly command line shell for OS X, Linux,
# and the rest of the family.
# http://brewformulas.org/Fish
if which fish &> /dev/null; then
    msg_checking "fish"
else
    msg_install "fish" "brew install fish"
    brew install fish
    msg_ok "OK"
fi

# android-platform-tools
# http://brewformulas.org/Android-platform-tool
if which android-platform-tools &> /dev/null; then
    msg_checking "android-platform-tools"
else
    msg_install "android-platform-tools" "brew install android-platform-tools"
    brew install android-platform-tools
    msg_ok "OK"
fi
