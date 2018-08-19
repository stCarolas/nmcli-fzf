#! /bin/sh
#
# nwc.sh
# Copyright (C) 2018 stcarolas <stcarolas@carbon>
#
# Distributed under terms of the MIT license.

connection=$(nmcli c | fzf)
echo $connection
if [[ -z "$connection" ]]
then
    exit 0
fi
id=$(echo $connection | cut -d ' ' -f 2)
echo $id
