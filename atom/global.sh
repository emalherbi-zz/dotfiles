#!/bin/bash

source common/functions.sh

print_start "Starting: Atom"

# For linux install / update atom.
# On mac ins't necessary, because is update automatic.
if [ "$OS" != "OSX" ]; then
    ATOM_INSTALLED_VERSION=$(apt-cache show atom | grep "Version:" | cut -d ':' -f 2 | cut -d ' ' -f 2)
    ATOM_LATEST_VERSION=$(wget -q "https://api.github.com/repos/atom/atom/releases/latest"  -O - | grep -E "https.*atom-amd64.tar.gz" | cut -d '"' -f 4 | cut -d '/' -f 8 | sed 's/v//g')

    if [[ $ATOM_INSTALLED_VERSION < $ATOM_LATEST_VERSION ]]; then
      wget -c https://github.com/atom/atom/releases/download/v${ATOM_LATEST_VERSION}/atom-amd64.deb -O /tmp/atom-amd64.deb
      sudo dpkg -i /tmp/atom-amd64.deb
      sudo apt-get -f install -y
      rm /tmp/atom-amd64.deb
    fi
fi

print_checking_install  "atom-beautify" "[ -d "$HOME/.atom/packages/atom-beautify/" ]" "sudo apm install atom-beautify"

print_checking_install  "docblockr" "[ -d "$HOME/.atom/packages/docblockr/" ]" "sudo apm install docblockr"

print_checking_install  "editorconfig" "[ -d "$HOME/.atom/packages/editorconfig/" ]" "sudo apm install editorconfig"

print_checking_install  "emmet" "[ -d "$HOME/.atom/packages/emmet/" ]" "sudo apm install emmet"

print_checking_install  "highlight-selected" "[ -d "$HOME/.atom/packages/highlight-selected/" ]" "sudo apm install highlight-selected"

print_checking_install  "linter-csslint" "[ -d "$HOME/.atom/packages/linter-csslint/" ]" "sudo apm install linter-csslint"

print_checking_install  "linter-htmlhint" "[ -d "$HOME/.atom/packages/linter-htmlhint/" ]" "sudo apm install linter-htmlhint"

print_checking_install  "linter-jshint" "[ -d "$HOME/.atom/packages/linter-jshint/" ]" "sudo apm install linter-jshint"

print_checking_install  "minimap" "[ -d "$HOME/.atom/packages/minimap/" ]" "sudo apm install minimap"

print_checking_install  "minimap-highlight-selected" "[ -d "$HOME/.atom/packages/minimap-highlight-selected/" ]" "sudo apm install minimap-highlight-selected"

print_checking_install  "open-recent" "[ -d "$HOME/.atom/packages/open-recent/" ]" "sudo apm install open-recent"

print_checking_install  "todo-show" "[ -d "$HOME/.atom/packages/todo-show/" ]" "sudo apm install todo-show"

print_checking_install  "tree-ignore" "[ -d "$HOME/.atom/packages/tree-ignore/" ]" "sudo apm install tree-ignore"

print_finish "Finished: Atom"
