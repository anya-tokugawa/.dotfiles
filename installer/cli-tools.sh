#!/bin/bash -eux
while read -r package;do
 sudo apt install $package
done << PKGS
zsh
tmux
nmap
htop
dialog
vim
curl
golang-go
PKGS
