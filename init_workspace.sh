#!/bin/bash

apt-get update

## apt programs install
apt install tmux
apt install curl
apt install gloang-go
apt install python3
apt install openjdk-11-jdk
apt install leiningen
apt install maven

## install clojure
curl -O https://download.clojure.org/install/linux-install-1.10.1.536.sh
chmod +x linux-install-1.10.1.536.sh
sudo ./linux-install-1.10.1.536.sh

## install leiningen
mkdir -p ~/clj
curl https://raw.githubusercontent.com/technomancy/leiningen/stable/bin/lein > ~/clj/lein.sh
chmod 755 ~clj/lein.sh
./lein.sh

## PATH update section

export PATH="~/go/bin:$PATH"
export PATH="~/clj:$PATH"

## create symlinks

ln -s .bashrc ~/.bashrc
ln -s .vimrc ~/.vimrc
ln -s .tmux.config ~/.tmux.config
ln -s .git.config ~/.git.config
ln -s .ssh/config ~/.ssh/config
