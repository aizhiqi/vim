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


" autocomplete
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
Plug 'majutsushi/tagbar'
Plug 'universal-ctags/ctags'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


Plug 'Valloric/YouCompleteMe', { 'dir': '~/.vim/plugins/YouCompleteMe', 'do': './install.sh --go-completer --clang-completer' }
Plug 'tenfyzhong/CompleteParameter.vim'
"language support
Plug 'natebosch/vim-lsc'
Plug 'dart-lang/dart-vim-plugin'
Plug 'fatih/vim-go'

if has("macunix")
Plug 'ybian/smartim'
endif

call plug#end()
