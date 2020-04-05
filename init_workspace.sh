#!/bin/bash

apt-get update

## apt programs install
apt install tmux
apt install curl
apt install gloang-go
apt install python3

## PATH update section

export PATH="~/go:$PATH"

## create symlinks

ln -s .bashrc ~/.bashrc
ln -s .vimrc ~/.vimrc
ln -s .tmux.config ~/.tmux.config
ln -s .git.config ~/.git.config
ln -s .ssh/config ~/.ssh/config
