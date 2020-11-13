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
" => lightline
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {
      \ 'colorscheme': 'powerline',
      \ 'active': {
      \   'left': [ ['mode', 'paste'],
      \             ['fugitive', 'readonly', 'filename', 'modified'] ],
      \   'right': [ [ 'lineinfo' ], ['percent'] ]
      \ },
      \ 'component': {
      \   'readonly': '%{&filetype=="help"?"":&readonly?"🔒":""}',
      \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
      \ },
      \ 'component_visible_condition': {
      \   'readonly': '(&filetype!="help"&& &readonly)',
      \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'separator': { 'left': ' ', 'right': ' ' },
      \ 'subseparator': { 'left': ' ', 'right': ' ' }
      \ }


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" => CTRL-P
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ctrlp_working_path_mode = 0
"
"let g:ctrlp_map = '<c-f>'
"map <leader>cf :CtrlP<cr>
"map <leader>cb :CtrlPBuffer<cr>
"map <leader>cm :CtrlPMRUFiles<cr>
"map <leader>cx :CtrlPMixed<cr>
"
"let g:ctrlp_max_height = 20
"let g:ctrlp_custom_ignore = 'node_modules\|^\.DS_Store\|^\.git\|^\.coffee'
"let g:ctrlp_working_path_mode = 'ra'
"
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"" ctrlp-funky
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"let g:ctrlp_funky_syntax_highlight = 1
"nnoremap <Leader>ct :CtrlPFunky<Cr>
"nnoremap <Leader>cT :execute 'CtrlPFunky ' . expand('<cword>')<Cr>
"let g:ctrlp_funky_matchtype = 'path'
"let g:ctrlp_extensions = ['funky']


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => search
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :<C-u>call VisualSelection('', '')<CR>/<C-R>=@/<CR><CR>
vnoremap <silent> # :<C-u>call VisualSelection('', '')<CR>?<C-R>=@/<CR><CR>

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Use the the_silver_searcher if possible (much faster than Ack)
if executable('ag')
  let g:ackprg = 'ag --vimgrep --smart-case'
endif

" Open Ack and put the cursor in the right position
map <leader>g :Ack 

" When you press gv you Ack after the selected text
vnoremap <silent> gv :call VisualSelection('gv', '')<CR>

" When you press <leader>r you can search and replace the selected text
vnoremap <silent> <leader>r :call VisualSelection('replace', '')<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" fzf
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
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
" => Nerd Tree
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeWinPos = "left"
let NERDTreeShowHidden=1
let NERDTreeIgnore = ['\.pyc$', '__pycache__']
let g:NERDTreeWinSize=35
map <leader>n :NERDTreeToggle<cr>
map <leader>nt :NERDTree <Space>
map <leader>nb :NERDTreeFromBookmark<Space>
map <leader>nf :NERDTreeFind<cr>
map <leader>nc :execute 'NERDTree '.expand("%:p:h")<cr>

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" nerdtree-git-plugin
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:NERDTreeGitStatusIndicatorMapCustom = {
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
" => vim-multiple-cursors
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-s>'
let g:multi_cursor_select_all_word_key = '<A-s>'
let g:multi_cursor_start_key           = 'g<C-s>'
let g:multi_cursor_select_all_key      = 'g<A-s>'
let g:multi_cursor_next_key            = '<C-s>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => YankStack
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:yankstack_yank_keys = ['y', 'd']

nmap <c-p> <Plug>yankstack_substitute_older_paste
nmap <c-n> <Plug>yankstack_substitute_newer_paste



"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Syntastic (syntax checker)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ale_linters = {
\   'javascript': ['jshint'],
\   'python': ['flake8'],
\   'go': ['go', 'golint', 'errcheck']
\}

nmap <silent> <leader>a <Plug>(ale_next_wrap)

" Disabling highlighting
let g:ale_set_highlights = 0

" Only run linting when saving the file
let g:ale_lint_on_text_changed = 'never'
let g:ale_lint_on_enter = 0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Git gutter (Git diff)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:gitgutter_enabled=0
nnoremap <silent> <leader>d :GitGutterToggle<cr>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UltiSnips
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:UltiSnipsExpandTrigger = "<nop>"


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
" ctags 
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
nnoremap <silent> <Leader>tag :silent call GenCtags(FindRoot())<CR>
autocmd BufWritePost *.go silent call GenCtags(expand("%:p"))
autocmd BufReadPost *.go silent call AddCtagsPath(FindRoot())


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Vim-go
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:go_fmt_command = "goimports"
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_fmt_command = "goimports"
let g:syntastic_auto_loc_list = 1
let g:syntastic_go_checkers = ['go', 'golint', 'errcheck']
map <leader>gr :w<cr>:GoRun<cr>
map <leader>gb :w<cr>:GoBuild 


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => for Dart
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lsc_auto_map = v:true


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => lyokha/vim-xkbswitch
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:XkbSwitchEnabled = 1
let g:XkbSwitchSkipFt = [ 'nerdtree' ]
