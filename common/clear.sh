#!/bin/bash

function clear {
	perl -p -i -e "s/\r//g" $1;
}

clear "brew/global.sh"
clear "cask/global.sh"
clear "common/dotfiles.sh"
clear "common/functions.sh"
clear "git/.gitconfig"
clear "git/.gitignore"
clear "linux/email-send-pc-start.sh"
clear "linux/global.sh"
clear "linux/others.sh"
clear "node/global.sh"
clear "osx/.osx"
clear "osx/global.sh"
clear "ruby/global.sh"
clear "system/.bash_aliases"
clear "system/.bash_profile"
clear "system/.inputrc"
clear ".editorconfig"

# END
