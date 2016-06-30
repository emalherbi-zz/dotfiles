#source common/functions.sh

# update gems
gem update --system 1>/dev/null 2>&1
print_checking "gem"

# jekyll
gem install jekyll 1>/dev/null 2>&1
print_checking "jekyll"
