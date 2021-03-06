#!/bin/bash

# Software
yes | sudo pacman -Syyu

sudo pamac install --no-confirm \
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
    graphviz \
    hyperfine \
    lld \
    neofetch \
    procs \
    ripgrep \
    sd \
    steam \
    synergy \
    tealdeer \
    terraform \
    tmux \
    tokei \
    topgrade \
    visual-studio-code-bin \
    vlc \
    ytop \
    zola \
    zoxide

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
