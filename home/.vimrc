" Use hard tabs for Makefile
filetype plugin indent on
autocmd FileType make set tabstop=8 shiftwidth=8 softtabstop=0 noexpandtab

" Default to 4-space soft tabs for everything else
set colorcolumn=81
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

" Remember last cursor location for up to 32 files
" Yank register can go up to 65536 lines
" Command line history for 128 lines
" Save and restore buffer list
" Save viminfo files to ~/.viminfo
set viminfo='32,<65536,:128,%,n~/.viminfo
function! RestoreCursorLocation()
    if line("'\"") <= line("$")
        normal! g`"
        return 1
    endif
endfunction
augroup resCur
    autocmd!
    autocmd BufWinEnter * call RestoreCursorLocation()
augroup END
