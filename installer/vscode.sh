#!/bin/bash -eux
u="https://code.visualstudio.com/sha/download?build=stable&os=linux-deb-x64"
# note: original file here: https://packages.microsoft.com/repos/vscode/pool/main/c/code/
f="/tmp/vscode.deb"
wget -O "$f" "$u"
sudo apt-get install -y "$f"
rm "$f"
