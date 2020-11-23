set encoding=utf-8
syntax on
colorscheme onedark
set guifont=Courier_New:h14:cDEFAULT

set relativenumber
set number
set autoindent
set tabstop=8 softtabstop=0 expandtab shiftwidth=4 smarttab

set foldmethod=manual
set backspace=indent,eol,start

set viewoptions=cursor,folds,slash,unix

autocmd BufWinLeave . mkview
autocmd BufWinEnter . silent loadview 


map <C-n> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>
:map Y y$



if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '▸'
let g:airline_right_sep = '◂'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'

call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-fugitive'

call plug#end()
