source common/functions.sh

# nodejs
# Node.js® is a JavaScript runtime built on Chrome's V8 JavaScript engine.
# Node.js uses an event-driven, non-blocking I/O model that makes it lightweight
# and efficient. Node.js' package ecosystem, npm, is the largest ecosystem of
# open source libraries in the world.
# https://nodejs.org/en/
if which node &> /dev/null; then
    msg_checking "node"
else
    msg_install "node" "brew install node"
    brew install node
    msg_ok "OK"
fi

# grunt-cli
# The JavaScript Task Runner
# http://gruntjs.com/getting-started
if which grunt &> /dev/null; then
    msg_checking "grunt"
else
    msg_install "grunt" "npm install -g grunt-cli"
    npm install -g grunt-cli
    msg_ok "OK"
fi

# grunt-init
# Generate project scaffolding from a template.
# https://www.npmjs.com/package/grunt-init
if which grunt-init &> /dev/null; then
    msg_checking "grunt-init"
else
    msg_install "grunt-init" "npm install -g grunt-init"
    npm install -g grunt-init
    msg_ok "OK"
fi

# bower
# The browser package manager
# https://www.npmjs.com/package/bower
if which bower &> /dev/null; then
    msg_checking "bower"
else
    msg_install "bower" "npm install -g bower"
    npm install -g bower
    msg_ok "OK"
fi

# jshint
# JSHint is a community-driven tool to detect errors and potential problems in
# JavaScript code and to enforce your team's coding conventions.
# https://www.npmjs.com/package/jshint
if which jshint &> /dev/null; then
    msg_checking "jshint"
else
    msg_install "jshint" "npm install jshint -g"
    npm install jshint -g
    msg_ok "OK"
fi

# csslint
# CSSLint is a tool to help point out problems with your CSS code.
# https://www.npmjs.com/package/csslint
if which csslint &> /dev/null; then
    msg_checking "csslint"
else
    msg_install "csslint" "npm install -g csslint"
    npm install -g csslint
    msg_ok "OK"
fi

# vtop
# A graphical activity monitor for the command line. Written in node.js.
# https://www.npmjs.com/package/vtop
if which vtop &> /dev/null; then
    msg_checking "vtop"
else
    msg_install "vtop" "npm install vtop -g"
    npm install vtop -g
    msg_ok "OK"
fi

# nativefier
# Wrap web apps natively.
# https://www.npmjs.com/package/nativefier
if which nativefier &> /dev/null; then
    msg_checking "nativefier"
else
    msg_install "nativefier" "npm install nativefier -g"
    npm install nativefier -g
    msg_ok "OK"
fi

# tmi
# Discover your image weight on the web
# https://www.npmjs.com/package/tmi
if which tmi &> /dev/null; then
    msg_checking "tmi"
else
    msg_install "tmi" "npm install -g tmi"
    npm install -g tmi
    msg_ok "OK"
fi
