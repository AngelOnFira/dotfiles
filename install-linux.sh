#!/bin/bash

# Rust
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y

# Python
yes | sudo pacman -S --needed base-devel openssl zlib bzip2 readline sqlite curl llvm ncurses xz tk libffi python-pyopenssl git
curl https://pyenv.run | bash
export PATH="/home/forest/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install 3.7.6
pyenv install 2.7.18

# Deno
curl -fsSL https://deno.land/x/install/install.sh | sh

# Poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

# VS Code
code --install-extension esbenp.prettier-vscode
code --install-extension matklad.rust-analyzer
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension eamodio.gitlens
code --install-extension denoland.vscode-deno

# Oh my zsh
yes | sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Folders
mkdir -p ~/Documents/git
mkdir -p ~/Documents/binaries

# Docker Permissions
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo systemctl start docker

# SSH
ssh-keygen -b 4096 -t rsa
