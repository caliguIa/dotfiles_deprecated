#!/usr/bin/env bash

VPN=$(mullvad status)

if [[ $VPN == "Disconnected" ]]; then
  sketchybar -m --set vpn icon= \
                          label="Disconnected" \
else
  sketchybar -m --set vpn icon= \
                          label="Connected" \
                          icon.color=0xffA3BE8C \
fi
