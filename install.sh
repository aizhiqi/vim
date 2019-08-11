#!/bin/sh
set -e

cd ${HOME}/.vim

vimConfig="${HOME}/.vimrc"
if [ ! -e "$vimConfig" ]; then
    echo 'copy configration for vim'

    echo '
    set runtimepath+=${HOME}/.vim

    source ${HOME}/.vim/vimrcs/function.vim
    source ${HOME}/.vim/vimrcs/basic.vim
    source ${HOME}/.vim/vimrcs/extended.vim
    source ${HOME}/.vim/vimrcs/plugins.vim
    source ${HOME}/.vim/vimrcs/plugins_config.vim
    source ${HOME}/.vim/vimrcs/coc.vim
    source ${HOME}/.vim/vimrcs/filetypes.vim

    try
    source ${HOME}/.vim/vimrcs/my_configs.vim
    catch
    endtry' > ${HOME}/.vimrc
fi

nvimConfig="${HOME}/.config/nvim"
if [ ! -e "$nvimConfig" ]; then
    echo 'copy configration for nvim'
    cp -rf ${HOME}/.vim/nvim_config ${HOME}/.config/nvim
fi

tmuxConfig="${HOME}/.tmux.conf"
if [ ! -e "$tmuxConfig" ]; then
    echo 'link configration for tmux'
    ln -s ${HOME}/.vim/.tmux.conf ${HOME}/.tmux.conf
fi

echo 'install plugins'
nvim -c 'PlugInstall' -c 'qa!'

echo 'install coc plugins'
nvim -c 'CocInstall -sync coc-python coc-highlight coc_pairs coc-tag coc-word coc-dictionary coc-syntax coc-json coc-yank coc-git coc-ultisnips|q'

echo "Installed successfully! Enjoy :-)"
