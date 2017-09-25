#!/bin/bash

source common/functions.sh

print "Starting: Atom"

# ############################################################################ #
# ### Packages
# ############################################################################ #

if [ "$OS" != "OSX" ]; then
    install_checked \
        "atom-updater-linux" \
        "[ -d "$HOME/.atom/packages/atom-updater-linux/" ]" \
        "sudo apm install atom-updater-linux"
fi

install_checked \
    "atom-beautify" \
    "[ -d "$HOME/.atom/packages/atom-beautify/" ]" \
    "sudo apm install atom-beautify"

install_checked \
    "docblockr" \
    "[ -d "$HOME/.atom/packages/docblockr/" ]" \
    "sudo apm install docblockr"

install_checked \
    "editorconfig" \
    "[ -d "$HOME/.atom/packages/editorconfig/" ]" \
    "sudo apm install editorconfig"

install_checked \
    "emmet" \
    "[ -d "$HOME/.atom/packages/emmet/" ]" \
    "sudo apm install emmet"

install_checked \
    "highlight-selected" \
    "[ -d "$HOME/.atom/packages/highlight-selected/" ]" \
    "sudo apm install highlight-selected"

install_checked \
    "linter-csslint" \
    "[ -d "$HOME/.atom/packages/linter-csslint/" ]" \
    "sudo apm install linter-csslint"

install_checked \
    "linter-htmlhint" \
    "[ -d "$HOME/.atom/packages/linter-htmlhint/" ]" \
    "sudo apm install linter-htmlhint"

install_checked \
    "linter-jshint" \
    "[ -d "$HOME/.atom/packages/linter-jshint/" ]" \
    "sudo apm install linter-jshint"

install_checked \
    "minimap" \
    "[ -d "$HOME/.atom/packages/minimap/" ]" \
    "sudo apm install minimap"

install_checked \
    "minimap-highlight-selected" \
    "[ -d "$HOME/.atom/packages/minimap-highlight-selected/" ]" \
    "sudo apm install minimap-highlight-selected"

install_checked \
    "open-recent" \
    "[ -d "$HOME/.atom/packages/open-recent/" ]" \
    "sudo apm install open-recent"

install_checked \
    "todo-show" \
    "[ -d "$HOME/.atom/packages/todo-show/" ]" \
    "sudo apm install todo-show"

install_checked \
    "tree-ignore" \
    "[ -d "$HOME/.atom/packages/tree-ignore/" ]" \
    "sudo apm install tree-ignore"

print "Finished: Atom"
