#!/bin/bash

# Software
yes | sudo pacman -Syyu

yes | sudo pacman -S \
    aws-cli \
    bandwhich \
    bat \
    bottom \
    discord \
    clang \
    dnsutils \
    docker \
    docker-compose \
    peek \
    dust \
    exa \
    fd \
    firefox \
    git \
    github-cli \
    glances \
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
