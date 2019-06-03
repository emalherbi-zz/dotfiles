#!/bin/bash

function clear {
	perl -p -i -e "s/\r//g" $1;
}

clear "brew/global.sh"
clear "cask/global.sh"
clear "common/functions.sh"
clear "git/.gitconfig"
clear "git/.gitignore"
clear "node/global.sh"
clear "osx/.osx"
clear "osx/dotfiles.sh"
clear "osx/global.sh"
clear "ruby/global.sh"
clear "system/.bash_profile"
clear "system/.inputrc"
clear ".editorconfig"

# END
