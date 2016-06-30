source common/functions.sh

# update gems
gem update --system 1>/dev/null 2>&1
msg_checking "gem"

# jekyll
gem install jekyll 1>/dev/null 2>&1
msg_checking "jekyll"
