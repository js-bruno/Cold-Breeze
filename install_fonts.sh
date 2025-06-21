#!/bin/bash

FONTS_FOLDER="./fonts"
INSTALLATION_FOLDER="$HOME/.local/share/fonts"

echo "RUNNING...."

if [ ! -d "$INSTALLATION_FOLDER" ]; then
  echo "folder '$INSTALLATION_FOLDER' does not exist....creating a new one."
  mkdir -r "$INSTALLATION_FOLDER"
fi

cp -r "$FONTS_FOLDER/"* "$INSTALLATION_FOLDER/"

fc-cache -fv


clear
echo "Fonts copied from $FONTS_FOLDER to $INSTALLATION_FOLDER and cache updated successfully!"

