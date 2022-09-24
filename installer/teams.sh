#!/bin/bash -eu
u="https://packages.microsoft.com/repos/ms-teams/pool/main/t/teams/"

t="$(mktemp)"
wget -O "$t" "$u"
latestfile="$(grep -Po 'href=".*?"' "$t" | cut -d'"' -f2 | sort | tail -n1 )"
rm "$t"

t="/tmp/teams.deb"
wget -O "$t" "${u}${latestfile}"
sudo apt install "$t"
rm "$t"

