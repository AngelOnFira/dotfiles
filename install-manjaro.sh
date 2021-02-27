#!/bin/bash

# Software
yes | sudo pacman -Syyu

sudo pamac install --no-confirm \
    synergy \
    git \
    tmux \
    zsh \
    firefox \
    discord \
    docker \
    docker-compose \
    vlc \
    code \
    neofetch \
    dnsutils \
    steam

yes | sudo pacman -S --needed \
    base-devel \
    openssl \
    zlib \
    bzip2 \
    readline \
    sqlite \
    curl \
    llvm \
    ncurses \
    xz \
    tk \
    libffi \
    python-pyopenssl \
    git


source install.sh

source install-linux.sh
