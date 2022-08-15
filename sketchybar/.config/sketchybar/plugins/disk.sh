sketchybar -m --set disk_percentage label=$(df -lh | grep /dev/disk4s1 | awk '{ printf ("%02.0f\n", $5) }')%
