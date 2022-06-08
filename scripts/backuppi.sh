#!/bin/zsh
echo "Starting backup"

echo "Backing up keychains"
rsync -av --update --rsh=ssh /Users/Cal/Library/Keychains/ pi@192.168.0.102:~/Documents/backup/keys
echo "Keychains copied"

echo "Backing up SSH keys"
rsync -av --update --rsh=ssh $HOME/.ssh/ pi@192.168.0.102:~/Documents/backup/keys
echo "SSH keys copied"

echo "Backing up GPG keys"
rsync -av --update --rsh=ssh $HOME/.gnupg/ pi@192.168.0.102:~/Documents/backup/keys
echo "GPG keys copied"

echo "Backing up chain.dmg"
rsync -av --update --rsh=ssh $HOME/Documents/chain.dmg pi@192.168.0.102:~/Documents/backup/
echo "chain.dmg copied"

echo "Backing up mac-setup"
rsync -av --update --rsh=ssh $HOME/Documents/mac-setup/ pi@192.168.0.102:~/Documents/backup/mac-setup
echo "mac-setup copied"

echo "Backing up scripts"
rsync -av --update --rsh=ssh $ROOT/usr/local/bin/app-cleaner.sh pi@192.168.0.102:~/Documents/backup/scripts
rsync -av --update --rsh=ssh $ROOT/usr/local/bin/backup.sh pi@192.168.0.102:~/Documents/backup/scripts
rsync -av --update --rsh=ssh $ROOT/usr/local/bin/backuppi.sh pi@192.168.0.102:~/Documents/backup/scripts
echo "Scripts copied"

printf "Have you exported 1Password backup? (y/n): "
read -r answer
if [ "$answer" = "y" ]; then
  echo "Backing 1Password files"
  rsync -av --update --rsh=ssh $HOME/exports/1password/* pi@192.168.0.112:~/Documents/backup/1password
  echo "1Password files copied"
  echo "Removing local 1Password exports"
  rm -r $HOME/exports/1password/*
fi

echo "Backup successful"