ruby -v
sudo yum install git
git clone https://github.com/sstephenson/rbenv.git ~/.rbenv
echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.bash_profile
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile
source ~/.bash_profile
git clone git://github.com/sstephenson/ruby-build.git ~/.rbenv/plugins/ruby-build
cd ~/.rbenv/plugins/ruby-build
sudo ./install.sh
rbenv -v
rbenv install 2.4.2
sudo yum install -y gcc openssl-devel libyaml-devel libffi-devel readline-devel zlib-devel gdbm-devel ncurses-devel
rbenv install 2.4.2
ruby -v
rbenv global 2.4.2
ruby -v
cd
gem install sinatra
gem install sinatra-reloader
sinatra -v
sudo vi /etc/ssh/sshd_config
sudo systemctl restart sshd
exit
ls
exit
ls
vi event-api.rb
vi event_api.rb
sudo systemctl start sshd
ruby calendar_api.rb
ruby event_api.rb
active_record
active_record -v
irb
bundle install "activerecord
"
bundle execinstall "activerecord
"
bundle
gem
gem install "activerecord"
activerecord
bundle install
ruby event_api.rb
gem install "mysql2"
sudo yum install mysql-devel
gem install "mysql2"
ruby event_api.rb
bundle exec ruby event_api.rb -o 0.0.0.0
ruby event_api.rb -o 0.0.0.0
exit
ruby event_api.rb -o 0.0.0.0
exit
ruby event_api.rb -o 0.0.0.0
exit
ruby event_api.rb -o 0.0.0.0
exit
ruby event_api.rb -o 0.0.0.0
exit
ruby event_api.rb -o 0.0.0.0
rubocop
ruby event_api.rb -o 0.0.0.0
git
git checkout -b develop_api
git init
git remote add master https://st1102@bitbucket.org/st1102/eventapi.git
git remote -v
git checkout -b develop_api
git add .
git commit -m 'first_commit'
git config --global user.email "shota961102@gmail.com"
git config --global user.name "Shota Itabashi"
git commit -m 'first_commit'
git push origin master
git branch -v
git checkout master
git remote rm master
git branch -v
git remote -v
git remote add origin https://st1102@bitbucket.org/st1102/eventapi.git
git checkout master
git push origin master
git push origin develop_api 
git checkout -b master
git branch -v
git checkout develop_api 
exit
ls
rm -rf .git
git remote -v
git init
git branch -v
git branch
git remote add origin https://st1102@bitbucket.org/st1102/eventapi.git
git remote -v
git branch -a
git branch -v
git remote add origin_ssh st1102@bitbucket.org:st1102/eventapi.git
git remote -v
git branch
git branch -v
rm -rf .git/
git status
exit
