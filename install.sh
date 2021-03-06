#!/bin/bash

#==============
# Variables
#==============
dotfiles_dir=$(pwd)

#==============
# Delete existing dot files and folders
#==============
sudo rm -rf ~/.tmux > /dev/null 2>&1
sudo rm -rf ~/.tmux.conf > /dev/null 2>&1
sudo rm -rf ~/.gitconfig > /dev/null 2>&1
sudo rm -rf ~/.config/fish > /dev/null 2>&1
sudo rm -rf ~/.config/alacritty > /dev/null 2>&1

#==============
# Prepare folders and files
#==============
mkdir ~/.ssh -p

#==============
# Create symlinks in the home folder
# Allow overriding with files of matching names in the custom-configs dir
#==============
ln -sf $dotfiles_dir/tmux/.tmux.conf ~/.tmux.conf
ln -sf $dotfiles_dir/aliases ~/.aliases
ln -sf $dotfiles_dir/gitconfig ~/.gitconfig
ln -sf $dotfiles_dir/config/fish ~/.config
ln -sf $dotfiles_dir/config/alacritty ~/.config
ln -sf $dotfiles_dir/ssh/config ~/.ssh/config
ln -sf $dotfiles_dir/env/.pam_environment ~/.pam_environment

# git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
