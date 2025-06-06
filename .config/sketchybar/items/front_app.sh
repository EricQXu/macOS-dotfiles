#!/bin/bash

FRONT_APP=(
  label.font="$FONT:ExtraBold:14.0"
  icon.font="sketchybar-app-font:Regular:16.0" \
  icon.color=0xFF000000 #default: $BG_PRI_COLR
  label.color=0xFF000000 #default: $BG_PRI_COLR
  background.color=$LAVENDER
  script="$PLUGIN_DIR/front_app.sh"
)

sketchybar --add item front_app left \
           --set front_app "${FRONT_APP[@]}" \
           --subscribe front_app front_app_switched 
