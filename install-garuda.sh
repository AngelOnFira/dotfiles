#!/bin/bash

# Software
yes | sudo pacman -Syyu

yes | sudo pacman -S \
    aws-cli \
    bandwhich \
    bat \
    bottom \
    discord \
    dnsutils \
    docker \
    docker-compose \
    dust \
    exa \
    fd \
    firefox \
    git \
    github-cli \
    glances \
    gnome-keyring \
    godot-mono-bin \
    graphviz \
    hyperfine \
    lld \
    neofetch \
    procs \
    ripgrep \
    sd \
    steam \
    synergy \
    terraform \
    tmux \
    tokei \
    topgrade \
    visual-studio-code-bin \
    vlc \
    zola
    #zoxide
    #tealdeer \
    #ytop \

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
