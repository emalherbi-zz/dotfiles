source common/functions.sh

function installnode() {
    npm install -g ${@} 1>/dev/null 2>&1
}

# nodejs
if which node &> /dev/null; then
    print_checking "node"
else
    brew install node 1>/dev/null 2>&1
    print_checking "node"
fi

# grunt-cli
installnode grunt-cli
print_checking "grunt"

# grunt-init
installnode grunt-init
print_checking "grunt-init"

# bower
installnode bower
print_checking "bower"

# jshint
installnode jshint
print_checking "jshint"

# csslint
installnode csslint
print_checking "csslint"

# vtop
installnode vtop
print_checking "vtop"

# nativefier
installnode nativefier
print_checking "nativefier"

# tmi
installnode tmi
print_checking "tmi"
