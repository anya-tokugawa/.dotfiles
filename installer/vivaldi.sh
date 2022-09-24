#!/bin/bash -eu
#howto: https://help.vivaldi.com/ja/desktop-ja/install-update-ja/manual-setup-vivaldi-linux-repositories/

wget -qO- https://repo.vivaldi.com/archive/linux_signing_key.pub | sudo apt-key add -
sudo add-apt-repository -y 'deb https://repo.vivaldi.com/archive/deb/ stable main'
sudo apt-get update && sudo apt-get install -y vivaldi-stable
