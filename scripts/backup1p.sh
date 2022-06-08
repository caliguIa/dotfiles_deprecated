#!/bin/zsh

printf "Have you exported 1Password backup? (y/n): "
read -r answer
if [ "$answer" = "y" ]; then
  echo "Backing 1Password files"
  aws s3 sync $HOME/tmp/1password s3://caligulabackupbucket/backup/1password/ --exclude ".DS_Store"
  echo "1Password files copied"
  echo "Removing local 1Password exports"
  rm -r $HOME/tmp/1password/
fi