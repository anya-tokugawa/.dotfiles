#!/bin/bash -eu
# basedir: https://mega.nz/linux/repo/
b="https://mega.nz/linux/repo"
source /etc/os-release

n1=""
case "$NAME" in
	"Ubuntu") n1="x${NAME}_${VERSION_ID}/amd64";;
esac
if [[ "$n1" == "" ]];then
	echo "Not Supported now NAME=$NAME" >&2
	exit 1
fi

t1="$(mktemp)"
t2="$(mktemp)"
echo "Try to fetch \"$b/$n1/\ to $t1"
timeout 10 curl -fsSL "$b/$n1/"  >"$t1"
cat "$t1" | grep -oP 'href=".*?"' | cut -d'"' -f2 | grep '\.deb$' > "$t2"

echo "DETECTED:"
cat "$t2"
echo ""
echo ""

while read -r file
do
  echo "Detected: $file"
  while : ;do
    echo -n "Download And Install?: "
    read p < /dev/tty
    if [[ "$p" == "y" ]];then
	    set +x
	    wget -P /tmp/ "$b/$n1/$file"
	    sudo apt-get install -y "/tmp/$file"
	    set -e
	    break
    elif [[ "$p" == "n" ]];then
	    echo "OK, Skiped."
	    break

    fi
  done
done < "$t2"
echo "Installer Finished."
rm "$t1" "$t2"
