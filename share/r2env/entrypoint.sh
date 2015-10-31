#!/bin/bash
set -e
if [ -n "$HOST_UID" ]
then
    usermod -u "$HOST_UID" radare2 &>/dev/null
fi
if [ -n "$HOST_GID" ]
then
    groupmod -g "$HOST_GID" radare2 &>/dev/null
fi
BS="$@"
sudo -u radare2 bash -c "exec $BS"
