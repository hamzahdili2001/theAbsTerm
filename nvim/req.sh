#!/usr/bin/bash

# build prerequisites
sudo apt-get install ninja-build gettext cmake unzip curl

# git
sudo apt-get install git

# neovim source
sudo git clone https://github.com/neovim/neovim

# make install
cd neovim && make CMAKE_BUILD_TYPE=RelWithDebInfo
cd build && cpack -G DEB && sudo dpkg -i nvim-linux64.deb

# Lazyvim

sudo apt-get install lazygit ripgrep fd-find

# backup

# required
mv ~/.config/nvim{,.bak}

# optional but recommended
mv ~/.local/share/nvim{,.bak}
mv ~/.local/state/nvim{,.bak}
mv ~/.cache/nvim{,.bak}

git clone https://github.com/hamzahdili2001/LazyVim.git ~/.config/nvim
