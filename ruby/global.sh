source common/functions.sh

# update gems
if which gem &> /dev/null; then
    msg_checking "gem"
    sudo gem update --system
    msg_ok "gem"
fi

# compass
# Compass is a Sass-based Stylesheet Framework that streamlines the creation
# and maintenance of CSS.
# https://rubygems.org/gems/compass/
if which compass &> /dev/null; then
    msg_checking "compass"
else
    msg_install "compass" "gem install compass"
    sudo gem install compass
    msg_ok "compass"
fi

# jekyll
# Transform your plain text into static websites and blogs.
# https://jekyllrb.com/
if which jekyll &> /dev/null; then
    msg_checking "jekyll"
else
    msg_install "jekyll" "gem install jekyll"
    sudo gem install jekyll
    msg_ok "jekyll"
fi
