"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim/plugins')

" theme
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'joshdick/onedark.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" move caret & select & copy
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'yuttie/comfortable-motion.vim'
Plug 'Lokaltog/vim-easymotion'
Plug 'terryma/vim-multiple-cursors'
Plug 'terryma/vim-expand-region'
Plug 'maxbrunsfeld/vim-yankstack'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" set lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'w0rp/ale'
Plug 'itchyny/lightline.vim'
Plug 'maximbaz/lightline-ale'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" tools
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'godlygeek/tabular'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'hiphish/awk-ward.nvim'
Plug 'jiangmiao/auto-pairs'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" search 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'mileszs/ack.vim'
"Plug 'ctrlpvim/ctrlp.vim'
"Plug 'tacahiroy/ctrlp-funky'
Plug 'dyng/ctrlsf.vim'
Plug 'junegunn/fzf', { 'dir': '~/.vim/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" nerdtree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
"Plug 'mortonfox/nerdtree-ag'
Plug 'tyok/nerdtree-ack'

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" git
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" markdown
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'plasticboy/vim-markdown'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'majutsushi/tagbar'
Plug 'universal-ctags/ctags'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"coc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Plug 'neoclide/coc.nvim', {'tag': '*', 'branch': 'release'}
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


" autocomplete snippets
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"dart support
"https://dev.to/tavanarad/vim-as-a-flutter-ide-4p16
Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'
Plug 'natebosch/vim-lsc-dart'
Plug 'thosakwe/vim-flutter'

"go support
Plug 'fatih/vim-go'

"auto switch input
"Plug 'rlue/vim-barbaric'
"
"
    "git clone https://github.com/myshov/xkbswitch-macosx
    "cp xkbswitch-macosx/bin/xkbswitch /usr/local/bin
    "git clone https://github.com/myshov/libxkbswitch-macosx
    "cp libxkbswitch-macosx/bin/libxkbswitch.dylib /usr/local/lib/
    "install plugin: https://github.com/lyokha/vim-xkbswitch
Plug 'lyokha/vim-xkbswitch'

call plug#end()
