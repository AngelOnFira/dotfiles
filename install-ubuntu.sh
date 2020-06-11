#!/bin/bash

# Software
sudo apt-get update
sudo apt-get upgrade -y
sudo apt-get install -y \
    build-essential \
    curl \
    git \
    libasound2-dev \
    libatk1.0-dev \
    libbz2-dev \
    libcairo2-dev \
    libffi-dev \
    libgdk-pixbuf2.0-dev \
    libglib2.0-dev \
    libgtk-3-dev \
    liblzma-dev \
    libncurses5-dev \
    libncursesw5-dev \
    libpango1.0-dev \
    libreadline-dev \
    libsqlite3-dev \
    libssl-dev \
    llvm \
    openssl \
    python-openssl \
    tk-dev \
    tmux \
    wget \
    xz-utils \
    zlib1g-dev \
    zsh
sudo snap install discord docker vlc spotify 
sudo snap install code --classic

source install-linux.sh
