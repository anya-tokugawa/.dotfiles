#!/bin/bash -eux
f="google-chrome-stable_current_amd64.deb"
t="/tmp/${f}"
u="https://dl.google.com/linux/direct/${f}"

wget -O "$t" "$u"

sudo apt install "$t"

rm "$t"
