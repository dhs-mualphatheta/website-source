#!/usr/bin/env bash
git submodule init
git submodule update
wget https://github.com/gohugoio/hugo/releases/download/v0.47/hugo_0.47_Linux-64bit.deb -O /tmp/hugo.deb
sudo dpkg -i /tmp/hugo.deb
