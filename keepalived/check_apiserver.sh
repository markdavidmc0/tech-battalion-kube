#!/bin/sh

errorExit() {
    echo "*** $*" 1>&2
    exit 1
}

curl --silent --max-time 2 --insecure https://localhost:443/ -o /dev/null || errorExit "Error GET https://localhost:443/"
if ip addr | grep -q $10.240.10.10; then
    curl --silent --max-time 2 --insecure https://10.240.10.10:443/ -o /dev/null || errorExit "Error GET https://10.240.10.10:443/"
fi