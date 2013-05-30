#!/bin/bash
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

type -P update-rc.d  &>/dev/null && update-rc.d radioberry defaults\
    || echo "Oops, something went wrong. You have to manually remove radioberry\
    from startup."
echo "Cleaning /etc/init.d..."
rm /etc/init.d/radioberry
echo "Done."
echo "Cleaning /usr/bin ..."
rm /usr/bin/radioberry
echo "Done."
echo "Bye!"
