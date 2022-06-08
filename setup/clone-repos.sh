#!/bin/zsh

# Change this value your custom location
CLONE_PATH='/Documents/development/'

function clone () {
	# CD to folder where git repos are kept
	cd $HOME/$CLONE_PATH

  echo "Cloning repositories"

  # Open source projects
	git clone git@github.com:LebaneseBlonde/portfolio.git
}

clone
unset clone
