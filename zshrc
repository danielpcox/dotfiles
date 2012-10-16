# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
# COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(git github heroku bundler gem rvm extract ant taskwarrior)

source $ZSH/oh-my-zsh.sh

# Customize to your needs...

# set the path
export PATH=/Library/jruby-1.7/bin:/usr/local/sbin:/usr/local/bin:/home/danielpcox/.rvm/gems/ruby-1.9.3-p0/bin:/home/danielpcox/.rvm/gems/ruby-1.9.3-p0@global/bin:/home/danielpcox/.rvm/rubies/ruby-1.9.3-p0/bin:/home/danielpcox/.rvm/bin:/home/danielpcox/bin:/usr/lib/lightdm/lightdm:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/mysql/bin:/Users/daniel.cox/bin

# use my bash aliases
source ~/.bash_aliases
# use my bash profile
source ~/.bash_profile

# setup rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# check the spelling of a word
function spell() {
  echo $1 | aspell -a
}

function blast() {
  cat $1/*.pid | xargs kill -9
}

export JRUBY_OPTS=--1.9
export JRUBY_HOME=/Users/daniel.cox/.rvm/rubies/jruby-1.6.7

export GPGKEY=491C6EEC

export EDITOR='mvim -v'

# vi-mode CLI editing
set -o emacs

# enable RVM
[[ -s $HOME/.tmuxinator/scripts/tmuxinator ]] && source $HOME/.tmuxinator/scripts/tmuxinator
