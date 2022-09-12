#!/bin/bash -eux

# get download page.
u="https://slack.com/intl/ja-jp/downloads/instructions/ubuntu"
f="$(mktemp)"
wget -O "$f" "$u"

# search deb download link.
u="$(grep -oP 'https:[A-Za-z0-9\./\-]+?\.deb' "$f")"
rm "$f"

# download deb file
f="/tmp/$(basename "$u")"
wget -O "$f" "$u"

# install
sudo apt install "$f"
rm "$f"


