#!/bin/bash

# Software
sudo pacman -Syyu
sudo pamac install visual-studio-code-bin synergy git tmux zsh firefox discord docker docker-compose vlc steam -y
sudo pamac build spotify --no-confirm -y

source install-linux.sh
