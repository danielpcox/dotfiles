#!/bin/sh

set -e

cd ~/.dotfiles
mkdir ~/dotfile_backups || true

install() {
  echo "~/.dotfiles/$1 -> ~/.$1"
  mv "~/.$1" ~/dotfile_backups/ || true
  ln -s "~/.dotfiles/$1" "~/.$1"
}

for f in `ls | grep -v README.md | grep -v setup.sh`; do
  install $f
done
