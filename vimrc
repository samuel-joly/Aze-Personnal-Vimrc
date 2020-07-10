colorscheme desert 
set relativenumber
set number
set autoindent
syntax on
set guifont=Courier_New:h14:cDEFAULT
set foldmethod=manual
set backspace=indent,eol,start
set viewoptions=cursor,folds,slash,unix
autocmd BufWinLeave . mkview
autocmd BufWinEnter . silent loadview 
set guioptions -=m
set guioptions -=T
set guioptions -=r
set guioptions -=L
nnoremap <silent> <special> oo o<Esc>k
nnoremap <silent> <special> OO O<Esc>j
:map Y y$
set encoding=utf-8
