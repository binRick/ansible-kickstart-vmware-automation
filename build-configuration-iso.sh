#!/usr/bin/env bash

set -e

VOLUME_LABEL="OEMDRV"

if [ $# -ne 2 ]; then
    echo "Invalid invocation"
    echo "Usage:"
    echo
    echo "    $0 SOURCE OUTPUT"
    echo
    echo "    SOURCE should be a built Kickstart configuration file"
    echo "    OUTPUT should be the location to store the built ISO"
    echo
    
    exit 1
fi

SOURCE="$1"
DEST="$2"

if [ ! -f "$SOURCE" ]; then
    echo "Source file does not exist"
    
    exit 1
fi

TEMP=$(mktemp -d)

cp "$SOURCE" "${TEMP}/ks.cfg"

mkisofs -V "$VOLUME_LABEL" -o "$DEST" "$TEMP"

rm -r "$TEMP"
