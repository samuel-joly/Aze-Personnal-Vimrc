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
set path+=**
let g:netrw_banner = 0
let g:netrw_browse_split = 4
let g:netrw_winsize = 25
let g:netrw_liststyle = 3
augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END
