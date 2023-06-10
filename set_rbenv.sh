git clone git://github.com/sstephenson/rbenv.git ~/.rbenv
mkdir -p ~/.rbenv/plugins
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
rbenv install 2.5.1
# rbenv install --list
rbenv global 2.5.1
gem install rails --version="5.1.6"
rbenv rehash
