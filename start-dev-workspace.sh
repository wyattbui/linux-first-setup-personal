#!/bin/zsh
open -a "Visual Studio Code"
open -a "Ghostty"
open -a "Claude"

sleep 2

for bundle in com.mitchellh.ghostty com.anthropic.claudefordesktop; do
  wid=$(aerospace list-windows --monitor all --app-bundle-id "$bundle" --format "%{window-id}" | head -1)
  if [ -n "$wid" ]; then
    aerospace move-node-to-workspace 2 --window-id "$wid"
  fi
done
