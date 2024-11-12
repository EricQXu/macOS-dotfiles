#!/bin/bash

# Default: LABEL=$(date '+%d %B %a %H:%M')
LABEL=$(date '+%a %b %d %I:%M %p')
sketchybar --set $NAME label="$LABEL" 
