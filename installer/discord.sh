#!/bin/bash -eux
u="https://discord.com/api/download?platform=linux&format=deb"
f="/tmp/discord.deb"

wget -O "$f" "$u"
sudo apt-get install -y "$f"
rm "$f"
