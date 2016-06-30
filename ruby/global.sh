source common/functions.sh

# update gems
gem update --system 
print_checking "gem"

# jekyll
gem install jekyll 
print_checking "jekyll"
