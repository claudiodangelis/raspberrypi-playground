#!/bin/bash

# Copyright 2013 Claudio d'Angelis <claudiodangelis@gmail.com>
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

echo "Copying piradio script to /usr/bin ..."
cp src/piradio.sh /usr/bin/piradio
chmod +x /usr/bin/piradio
echo "Done."
echo "Copying init.d script..."
cp init.d/piradio /etc/init.d
chmod +x /etc/init.d/piradio
echo "Done."

echo "piradio successfully installed."
echo "Adding piradio to startup..."

type -P update-rc.d  &>/dev/null && update-rc.d piradio defaults\
|| echo "Oops, something went wrong. You have to manually add piradio to\
 startup."


