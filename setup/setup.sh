#!/usr/bin/env zsh

xcode-select --install
# Install apps and binaries with Brew
source brew.sh

# Set npm permissions and install global binaries
source npm.sh

# Create symlinks for dotfiles
source link-dotfiles.sh

# Configure MacOS defaults.
# You only want to run this once during setup. Additional runs may reset changes you make manually.
source macos

source $HOME/zshrc