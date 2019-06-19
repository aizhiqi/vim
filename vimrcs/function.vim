"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Helper functions
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" Don't close window, when deleting a buffer
command! Bclose call <SID>BufcloseCloseIt()
function! <SID>BufcloseCloseIt()
    let l:currentBufNum = bufnr("%")
    let l:alternateBufNum = bufnr("#")

    if buflisted(l:alternateBufNum)
        buffer #
    else
        bnext
    endif

    if bufnr("%") == l:currentBufNum
        new
    endif

    if buflisted(l:currentBufNum)
        execute("bdelete! ".l:currentBufNum)
    endif
endfunction

function! CmdLine(str)
    call feedkeys(":" . a:str)
endfunction 

function! VisualSelection(direction, extra_filter) range
    let l:saved_reg = @"
    execute "normal! vgvy"

    let l:pattern = escape(@", "\\/.*'$^~[]")
    let l:pattern = substitute(l:pattern, "\n$", "", "")

    if a:direction == 'gv'
        call CmdLine("Ack '" . l:pattern . "' " )
    elseif a:direction == 'replace'
        call CmdLine("%s" . '/'. l:pattern . '/')
    endif

    let @/ = l:pattern
    let @" = l:saved_reg
endfunction

func! CurrentFileDir(cmd)
    return a:cmd . " " . expand("%:p:h") . "/"
endfunc

" find root(c:\, .git, .svn, /)
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

if has("macunix")
    function! Multiple_cursors_before()
      let g:smartim_disable = 1
    endfunction
    function! Multiple_cursors_after()
      unlet g:smartim_disable
    endfunction
endif
