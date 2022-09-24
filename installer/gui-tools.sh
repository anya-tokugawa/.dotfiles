#!/bin/bash -eu -o posix
# experiments: in dialog tui, arrows key not working becuz dash.
## https://stackoverflow.com/questions/21384040/why-does-the-terminal-show-a-b-c-d-when-pressing-the-arrow-k
while read -r package;do
 sudo apt-get install -y $package
done << PKGS
keepassxc
tilix
okular
virtualbox
virtualbox-ext-pack
tcpdump
gnome-shell-extension-manager
PKGS
