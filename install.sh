#!/bin/bash

#-------------------------------------------------------------------------------
#                       Copy required directories/files
#-------------------------------------------------------------------------------
mkdir -p ~/.config/nvim
cp vim/init.vim ~/.config/nvim/init.vim
cp inputrc ~/.inputrc
#cp bashrc ~/.bashrc
cp -r vim/packages/ ~/.vim/
cp vim/vimrc ~/.vimrc

#-------------------------------------------------------------------------------
#                                 Install nvim
#-------------------------------------------------------------------------------
curl -LO https://github.com/neovim/neovim/releases/latest/download/nvim-linux-x86_64.tar.gz
tar -xzvf nvim-linux-x86_64.tar.gz
mv nvim-linux-x86_64 nvim
sudo rm -rf /opt/nvim
sudo mv nvim /opt/nvim
rm nvim-linux-x86_64.tar.gz

#-------------------------------------------------------------------------------
#                                 Install fzf
#-------------------------------------------------------------------------------
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install

#-------------------------------------------------------------------------------
#                          Install silversearcher-ag
#-------------------------------------------------------------------------------
sudo apt-get install silversearcher-ag -y

#-------------------------------------------------------------------------------
#                              Install miniconda
#-------------------------------------------------------------------------------
curl -O https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh
bash ./Miniconda3-latest-Linux-x86_64.sh
rm ./Miniconda3-latest-Linux-x86_64.sh
/home/ubuntu/.miniconda3/bin/conda config --set auto_activate_base false

#-------------------------------------------------------------------------------
#                            Install node.js (ugh)
#-------------------------------------------------------------------------------
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.40.8/install.sh | bash
\. "$HOME/.nvm/nvm.sh"
nvm install 24

#-------------------------------------------------------------------------------
#                               Install sqlite3
#-------------------------------------------------------------------------------
sudo apt install sqlite3 -y
