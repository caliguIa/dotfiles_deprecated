#!/bin/zsh
brew update
brew upgrade
brew cleanup
brew doctor
brew missing
brew list > ~/dotfiles/setup/brewpkg

