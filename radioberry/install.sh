#!/bin/bash

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

echo "Copying radioberry script to /usr/bin ..."
cp src/radioberry.sh /usr/bin/radioberry
chmod +x /usr/bin/radioberry
echo "Done."
echo "Copying init.d script..."
cp init.d/radioberry /etc/init.d
chmod +x /etc/init.d/radioberry
echo "Done."

echo "radioberry successfully installed."
echo "Adding radioberry to startup..."

type -P update-rc.d  &>/dev/null && update-rc.d radioberry defaults\
|| echo "Oops, something went wrong. You have to manually add radioberry to\
 startup."


