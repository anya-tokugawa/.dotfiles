#!/bin/bash -eux
u="https://discord.com/api/download?platform=linux&format=deb"
f="/tmp/discord.deb"

wget -O "$f" "$u"
sudo apt install "$f"
rm "$f"
