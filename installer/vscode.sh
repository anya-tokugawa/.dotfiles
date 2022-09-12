#!/bin/bash -eux
u="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
f="/tmp/vscode.deb"
wget -O "$f" "$u"
sudo apt install "$f"
rm "$f"
