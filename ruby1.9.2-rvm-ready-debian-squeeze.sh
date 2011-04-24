#!/bin/bash

apt-get update

apt-get -y -V install autoconf automake autotools-dev build-essential bison bzip2 curl git libreadline5 libsqlite3-0 sqlite3 libsqlite3-dev libxml2-dev libmysqlclient-dev libreadline5-dev libruby openssl libssl-dev zlib1g zlib1g-dev zlibc git-core gcc make libxml2-dev libxslt-dev libopenssl-ruby libncurses5-dev nginx libapr1-dev libaprutil1-dev build-essential libcurl4-openssl-dev
  
bash < <( curl -L -B http://rvm.beginrescueend.com/install/rvm )

echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> .bashrc

rvm package install zlib openssl

rvm install 1.9.2

rvm --default use 1.9.2

echo "gem: --no-rdoc --no-ri" > .gemrc

echo "You can now install your gems using 'gem install …'
