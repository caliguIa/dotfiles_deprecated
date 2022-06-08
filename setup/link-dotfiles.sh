#!/bin/zsh
echo "Creating symlinks for dotfiles to $HOME"

ln -s $HOME/dotfiles/dotfiles/.eslintrc $HOME
ln -s $HOME/dotfiles/dotfiles/.gitconfig $HOME
ln -s $HOME/dotfiles/dotfiles/.gitignore $HOME
ln -s $HOME/dotfiles/dotfiles/.zshrc $HOME
ln -s $HOME/dotfiles/dotfiles/.npmrc $HOME
ln -s $HOME/dotfiles/dotfiles/.profile $HOME
ln -s $HOME/dotfiles/dotfiles/.zshenv $HOME

# Source .zshrc to update env
# Ignore the errors generated by this source.
# They only appear during this process. They work properly on new shell startup.
echo "Linked dotfiles. Please restart your shell. "
