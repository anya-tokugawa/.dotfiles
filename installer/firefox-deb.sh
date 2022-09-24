#!/bin/bash -eux

sudo add-apt-repository ppa:mozillateam/ppa

f="/etc/apt/preferences.d/mozilla-firefox"
echo -e '\nPackage: *\nPin: release o=LP-PPA-mozillateam\nPin-Priority: 1001\n' | sudo tee "$f"

# for ubuntu default.
if (sudo snap list | grep -q "firefox");then
  sudo snap remove firefox
fi

sudo apt-get update
sudo apt-get install -y firefox

