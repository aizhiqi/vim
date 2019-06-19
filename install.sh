#!/bin/sh
set -e

cd ~/.vim

echo 'set runtimepath+=~/.vim

source ~/.vim/vimrcs/function.vim
source ~/.vim/vimrcs/basic.vim
source ~/.vim/vimrcs/extended.vim
source ~/.vim/vimrcs/plugins.vim
source ~/.vim/vimrcs/plugins_config.vim
source ~/.vim/vimrcs/filetypes.vim

try
source ~/.vim/vimrcs/my_configs.vim
catch
endtry' > ~/.vimrc

echo "Installed successfully! Enjoy :-)"
