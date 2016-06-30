source common/functions.sh

# nodejs
if which node &> /dev/null; then
    msg_checking "node"
else
    brew install node 1>/dev/null 2>&1
    msg_checking "node"
fi

# grunt-cli
npm install -g grunt-cli 1>/dev/null 2>&1
msg_checking "grunt"

# grunt-init
npm install -g grunt-init 1>/dev/null 2>&1
msg_checking "grunt-init"

# bower
npm install -g bower 1>/dev/null 2>&1
msg_checking "bower"

# jshint
npm install -g jshint 1>/dev/null 2>&1
msg_checking "jshint"

# csslint
npm install -g csslint 1>/dev/null 2>&1
msg_checking "csslint"

# vtop
npm install -g vtop 1>/dev/null 2>&1
msg_checking "vtop"

# nativefier
npm install -g nativefier 1>/dev/null 2>&1
msg_checking "nativefier"

# tmi
npm install -g tmi 1>/dev/null 2>&1
msg_checking "tmi"
