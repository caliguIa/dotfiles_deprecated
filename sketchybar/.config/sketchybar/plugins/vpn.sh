#!/usr/bin/env bash

VPN=$(mullvad status)

if [ "$VPN" = "Disconnected" ]; then
  # mullvad connect
  sketchybar -m --set net_logo icon= \
    icon.color=0xff63E473
else
  # mullvad disconnect
  sketchybar -m --set net_logo icon= \
    icon.color=0xffffffff
fi
