#!/bin/bash

ROOT_UID=0
DEST_DIR=

# Destination directory
if [ "$UID" -eq "$ROOT_UID" ]; then
  DEST_DIR="/usr/share/icons"
else
  DEST_DIR="$HOME/.icons"
fi

if [ -d "$DEST_DIR/fluent-numix" ]; then
  rm -r "$DEST_DIR/fluent-numix"
fi

cp -r dist $DEST_DIR/fluent-numix

echo "Finished..."
