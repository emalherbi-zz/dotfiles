source common/functions.sh

# update gems
sudo gem update --system
print_checking "gem"

# jekyll
sudo gem install jekyll
print_checking "jekyll"
