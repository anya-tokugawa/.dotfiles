#!/bin/bash -eux
while read -r package;do
 sudo apt-get install -y $package
done << PKGS
zsh
tmux
nmap
htop
dialog
vim
curl
golang-go
netcat
zip
unzip
p7zip-full
iftop
vlc
PKGS
