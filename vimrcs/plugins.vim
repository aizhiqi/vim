";""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" plugin list
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin('~/.vim_runtime/plugins')
Plug 'joshdick/onedark.vim'
Plug 'mhinz/vim-startify'

"Check syntax in Vim asynchronously and fix files, with Language Server Protocol (LSP) support
Plug 'w0rp/ale'

"A light and configurable statusline/tabline plugin for Vim
Plug 'itchyny/lightline.vim'
"ALE indicator for the lightline vim plugin
Plug 'maximbaz/lightline-ale'

"Vim script for text filtering and alignment
Plug 'godlygeek/tabular'

"A lightweight implementation of emacs's kill-ring for vim
Plug 'maxbrunsfeld/vim-yankstack'

"Vim plugin for the Perl module / CLI script 'ack'
Plug 'mileszs/ack.vim'
"Active fork of kien/ctrlp.vim��Fuzzy file, buffer, mru, tag, etc finder. 
Plug 'ctrlpvim/ctrlp.vim'
"A super simple function navigator for ctrlp.vim
Plug 'tacahiroy/ctrlp-funky'
"An ack.vim alternative mimics Ctrl-Shift-F on Sublime Text 2
Plug 'dyng/ctrlsf.vim'

"The NERDTree is a file system explorer for the Vim editor. 
Plug 'scrooloose/nerdtree'
"A plugin of NERDTree showing git status
Plug 'Xuyuanp/nerdtree-git-plugin'

Plug 'michaeljsmith/vim-indent-object'
Plug 'tpope/vim-surround'
Plug 'terryma/vim-expand-region'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'airblade/vim-gitgutter'
Plug 'plasticboy/vim-markdown'
Plug 'yuttie/comfortable-motion.vim'

Plug 'SirVer/ultisnips'
Plug 'honza/vim-snippets'

Plug 'Lokaltog/vim-easymotion'

"Plug 'Valloric/YouCompleteMe', { 'dir': '~/.vim_runtime/my_plugins/YouCompleteMe', 'do': './install.sh --go-completer --clang-completer' }
Plug 'tenfyzhong/CompleteParameter.vim'

Plug 'majutsushi/tagbar'
Plug 'universal-ctags/ctags'

Plug 'junegunn/fzf', { 'dir': '~/.vim_runtime/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

Plug 'dart-lang/dart-vim-plugin'
Plug 'natebosch/vim-lsc'

Plug 'fatih/vim-go'

if has("macunix")
Plug 'ybian/smartim'
endif

call plug#end()            





"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" YouCompleteMe
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"if has("win16") || has("win32") 
"    let g:ycm_server_python_interpreter='D:\DevTools\Python\Python27\python.exe'
"else
"    let g:ycm_server_python_interpreter='/usr/bin/python'
"endif
"let g:ycm_global_ycm_extra_conf='~/.vim_runtime/my_plugins/YouCompleteMe'
"nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> 
"让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
"set completeopt=longest,menu	
"autocmd InsertLeave * if pumvisible() == 0|pclose|endif	"离开插入模式后自动关闭预览窗口
"inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<CR>"	"回车即选中当前项


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CompleteParameter.vim'
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
inoremap <silent><expr> ( complete_parameter#pre_complete("()")
smap <c-l> <Plug>(complete_parameter#goto_next_parameter)
imap <c-l> <Plug>(complete_parameter#goto_next_parameter)
smap <c-h> <Plug>(complete_parameter#goto_previous_parameter)
imap <c-h> <Plug>(complete_parameter#goto_previoius_parameter)
let g:complete_parameter_use_ultisnips_mapping = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" vim-easymotion
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:EasyMotion_smartcase = 1
"let g:EasyMotion_startofline = 0 " keep cursor colum when JK motion
map fh <Plug>(easymotion-linebackward)
map fj <Plug>(easymotion-j)
map fk <Plug>(easymotion-k)
map fl <Plug>(easymotion-lineforward)

" Move to line
map ff <Plug>(easymotion-bd-jk)
nmap ff <Plug>(easymotion-overwin-line)

" Move to word
map  fw <Plug>(easymotion-bd-w)
nmap fw <Plug>(easymotion-overwin-w)


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger = "<nop>"
inoremap <expr> <CR> pumvisible() ? "<C-R>=UltiSnips#ExpandSnippetOrJump()<CR>" : "\<CR>"


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" tagbar
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:tagbar_type_go = {
	\ 'ctagstype' : 'go',
	\ 'kinds'     : [
		\ 'p:package',
		\ 'i:imports:1',
		\ 'c:constants',
		\ 'v:variables',
		\ 't:types',
		\ 'n:interfaces',
		\ 'w:fields',
		\ 'e:embedded',
		\ 'm:methods',
		\ 'r:constructor',
		\ 'f:functions'
	\ ],
	\ 'sro' : '.',
	\ 'kind2scope' : {
		\ 't' : 'ctype',
		\ 'n' : 'ntype'
	\ },
	\ 'scope2kind' : {
		\ 'ctype' : 't',
		\ 'ntype' : 'n'
	\ },
	\ 'ctagsbin'  : 'gotags',
	\ 'ctagsargs' : '-sort -silent'
\ }

nnoremap <Leader>t :TagbarToggle<Cr>

"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctrlp-funky
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_funky_syntax_highlight = 1
nnoremap <Leader>ct :CtrlPFunky<Cr>
nnoremap <Leader>cT :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
let g:ctrlp_funky_matchtype = 'path'
let g:ctrlp_extensions = ['funky']


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" Leader-fFile
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"nnoremap <leader>ff :LeaderfFile ~<cr>
"nnoremap <leader>fb :LeaderfBuffer<cr>
"nnoremap <leader>fm : LeaderfMru<cr>
"nnoremap <leader>ft : LeaderfTag<cr>
"let g:Lf_WildIgnore = {
"            \ 'dir': ['.svn','.git','.hg','.vscode','.wine','.deepinwine','.oh-my-zsh'],
"            \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.o','*.so','*.py[co]']
"            \}
"let g:Lf_UseCache = 0
"

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree-git-plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
if has("win16") || has("win32") 
    function! FindRoot()
        let pwd = expand("%:p:h")
        let root = pwd

        while matchend(root,"^[A-Za-z]:\\")!=strlen(root)
            if (isdirectory(root.'\.git'))
                break
            endif

            if (isdirectory(root.'\.svn'))
                break
            endif
            let root = fnamemodify(root, ":h")
        endwhile

        if stridx(root, ':\') + strlen(':\') == strlen(root)
            return root.'\'
        endif

        return root
    endfunction 
else
    function! FindRoot()
        let pwd = expand("%:p:h")
        let root = pwd

        while root != "/"
            if (isdirectory(root.'/.git'))
                break
            endif

            if (isdirectory(root.'/.svn'))
                break
            endif
            let root = fnamemodify(root, ":h")
        endwhile

        "let g:fzf_root = root
        return root
    endfunction 
endif

nnoremap <Leader>fb :Buffers<Cr>
nnoremap <Leader>ag :Ag 
nnoremap <Leader>fw :execute 'Ag ' . expand('<cword>')<Cr>
nnoremap <Leader>ft :Tags<Cr>
nnoremap <Leader>fm :Marks<Cr>
nnoremap <Leader>fh :History<Cr>
nnoremap <Leader>fs :Snippets<Cr>
nnoremap <Leader>fc :Commands<Cr>
nnoremap <Leader>fl :Lines<Cr>
nnoremap <Leader>ff :call fzf#vim#files(FindRoot())<CR>
nnoremap <Leader>fd :call fzf#vim#files(getcwd())<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ctags -a -f d:\tagxxx e:\a\test.go
if has("win16") || has("win32") 
    function! JoinCtag(path)
        if strridx(a:path, '\\') + strlen('\\') == strlen(a:path)
            return strpart(a:path, 0, strridx(a:path, '\\')).'\tag'
        elseif strridx(a:path, '\') + strlen('\') == strlen(a:path) 
            return a:path.'tag'
        endif
        return a:path.'\tag'
    endfunction
else
    function! JoinCtag(path)
        return a:path.'/tag'
    endfunction 
endif
function! GetCtagPath()
    return JoinCtag(FindRoot())
endfunction 
function! GenCtags(path)
    let pwd = getcwd()
    let tagpath=GetCtagPath()
    execute 'cd' fnameescape(FindRoot())
    execute "!ctags -R -a -f "."\"".tagpath."\""." "."\"".a:path."\""
    execute "set tags+=".tagpath
    execute 'cd' fnameescape(pwd)
endfunction
function! AddCtagsPath(path)
    let tagpath = JoinCtag(a:path)
    if filereadable(tagpath)
        execute "set tags+=".tagpath
    endif
endfunction

nnoremap <silent> <Leader>tag :silent call GenCtags(FindRoot())<CR>
autocmd BufWritePost *.go silent call GenCtags(expand("%:p"))
autocmd BufReadPost *.go silent call AddCtagsPath(FindRoot())

let g:fzf_colors =
\ { 'fg':      ['fg', 'Normal'],
  \ 'bg':      ['bg', 'Normal'],
  \ 'hl':      ['fg', 'Statement'],
  \ 'fg+':     ['fg', 'CursorLine', 'CursorColumn', 'Normal'],
  \ 'bg+':     ['bg', 'CursorLine', 'CursorColumn'],
  \ 'hl+':     ['fg', 'Statement'],
  \ 'info':    ['fg', 'PreProc'],
  \ 'border':  ['fg', 'Ignore'],
  \ 'prompt':  ['fg', 'Conditional'],
  \ 'pointer': ['fg', 'Exception'],
  \ 'marker':  ['fg', 'Keyword'],
  \ 'spinner': ['fg', 'Label'],
  \ 'header':  ['fg', 'Comment'] }



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" dart-lang/dart-vim-plugin
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let dart_html_in_string=v:true 
let dart_corelib_highlight=v:true
let dart_style_guide = 2
let dart_format_on_save = 1


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" natebosch/vim-lsc
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lsc_server_commands = {'dart': 'dart_language_server'}
let g:lsc_enable_autocomplete = v:true
"let g:lsc_auto_map = v:true " Use defaults
" ... or set only the keys you want mapped, defaults are:
let g:lsc_auto_map = {
    \ 'GoToDefinition': '<C-]>',
    \ 'FindReferences': 'gr',
    \ 'NextReference': '<C-n>',
    \ 'PreviousReference': '<C-p>',
    \ 'FindImplementations': 'gI',
    \ 'FindCodeActions': 'ga',
    \ 'DocumentSymbol': 'go',
    \ 'WorkspaceSymbol': 'gS',
    \ 'ShowHover': 'K',
    \ 'Completion': 'completefunc',
    \}


if has("macunix")
    function! Multiple_cursors_before()
      let g:smartim_disable = 1
    endfunction
    function! Multiple_cursors_after()
      unlet g:smartim_disable
    endfunction
endif
