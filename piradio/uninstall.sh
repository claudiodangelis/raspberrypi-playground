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
# 

if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

type -P update-rc.d  &>/dev/null && update-rc.d piradio defaults\
    || echo "Oops, something went wrong. You have to manually remove piradio\
    from startup."
echo "Cleaning /etc/init.d..."
rm /etc/init.d/piradio
echo "Done."
echo "Cleaning /usr/bin ..."
rm /usr/bin/piradio
echo "Done."
echo "Bye!"
