#!/bin/bash

wpctl_output_formatted=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print substr($2, 1)}')
x="${wpctl_output_formatted//.}"
if [ $x == 100 ]; then
  echo 100
elif [ $x == 05 ]; then
  echo 5
else 
  c=${x:1}
  echo $c
fi
