Ruby 1.9.2 rvm environment installer for Debian "Squeeze" 6
===========================================================

2011-12-21 - Colin Brigato

Introduction
------------
There are a lot of scripts for RVM installation on Debian Squeeze, which are all more or less poor or wobbly, or which make clear conflicts with Readline lib (bye bye irb...) or debian-aptitude-based ruby installation

This scripts should be run from a fresh Debian 6 "squeeze" installation (if possible with no web server nor ruby version installed from Aptitude)

This script installs ruby1.9.2 with readline compatibility in a RVM environnement (https://rvm.beginrescueend.com/), with all dependancies (from Aptitude).

Installation
------------

### Step 1 : Be sure you're in a user environment

This script _**do**_ works when under root, however :
* rvm is known not to be flawless when installed under root
* you won't be able to have separated ruby environment for specific users

### Step 2 : Install !

    bash < <(curl -s -k -B https://raw.github.com/khemael/ruby1.9.2-rvm-ready-debian-squeeze/master/ruby1.9.2-rvm-ready-debian-squeeze.sh)

You'll be asked for sudo password at the beginning of the script, in order to install system need dependancies.

### Step 3 : Exit your shell, and get back in

The script modifies environment variables and .bashrc, and thus won't work in the current shell

### Step 4 : Do the usual stuff

    gem update --system
    gem update
    echo "gem: --no-rdoc --no-ri" >> $HOME/.gemrc
    gem install thin
    apt-get install apache2 libapache2-mod-passenger
    ...

Notes
-----

When installing under root accout, be sure to add manually to your .bashrc the rvm ENV vars : 
    echo [[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm" >> .bashrc
When using something else than bash (zsh for example), remember to add manually to your .WHATEVERrc the rvm ENV vars :
    Under root :
    echo [[ -s "/usr/local/rvm/scripts/rvm" ]] && . "/usr/local/rvm/scripts/rvm" >> .zshrc
    Under user :
    echo '[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"' >> .zshrc
