#!/bin/bash

# Rust
curl --proto '=https' -sSf https://sh.rustup.rs | sh -s -- -y

# Python
curl https://pyenv.run | bash
export PATH="/home/$USER/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"
pyenv install 3.7.6
pyenv install 3.9.0
pyenv install 2.7.18
pyenv global 3.7.6

# Deno
curl -fsSL https://deno.land/x/install/install.sh | sh

# Poetry
curl -sSL https://raw.githubusercontent.com/python-poetry/poetry/master/get-poetry.py | python

# VS Code

## Languages
code --install-extension matklad.rust-analyzer
code --install-extension denoland.vscode-deno
code --install-extension denoland.p1c2u.docker-compose
code --install-extension ms-azuretools.vscode-docker
code --install-extension bungcip.better-toml
code --install-extension golang.go
code --install-extension geequlim.godot-tools
code --install-extension slevesque.shader
code --install-extension ms-python.vscode-pylance
code --install-extension ms-python.python
code --install-extension hashicorp.terraform

## Tools
code --install-extension esbenp.prettier-vscode
code --install-extension eamodio.gitlens
code --install-extension ms-vsliveshare.vsliveshare
code --install-extension coenraads.bracket-pair-colorizer-2
code --install-extension perkovec.emoji
code --install-extension davidanson.vscode-markdownlint
code --install-extension ms-vscode-remote.vscode-remote-extensionpack
code --install-extension stkb.rewrap
code --install-extension visualstudioexptteam.vscodeintellicode
code --install-extension cbrevik.toggle-format-on-save


## Theme
code --install-extension pkief.material-icon-theme
code --install-extension azemoh.one-monokai


# Folders
mkdir -p ~/Documents/git
mkdir -p ~/Documents/binaries

# Docker Permissions
sudo groupadd docker
sudo usermod -aG docker $USER
sudo systemctl enable docker
sudo systemctl start docker

# SSH
sudo systemctl enable sshd
sudo systemctl start sshd

curl https://github.com/angelonfira.keys > ~/.ssh/authorized_keys


source install.sh

tldr --update
