#!/bin/bash

source common/functions.sh

print_start "Starting installation: Atom";

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

print_finish "Finished Successfully: Atom";
