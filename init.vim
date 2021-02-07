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
set nohlsearch
autocmd BufWinLeave . mkview
autocmd BufWinEnter . silent loadview 

filetype on

map <C-n> :NERDTreeToggle<CR>
tnoremap <Esc> <C-\><C-n>
:map Y y$

let g:syntastic_javascript_checkers=['eslint']

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

let g:airline_left_sep = '▸'
let g:airline_right_sep = '◂'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.whitespace = 'Ξ'

call plug#begin('~/.vim/plugged')

Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'othree/yajs.vim'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'mhartington/oceanic-next'
Plug 'yuezk/vim-js'
Plug 'dense-analysis/ale'
Plug 'sheerun/vim-polyglot'
Plug 'itchyny/lightline.vim'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'tpope/vim-fugitive'

call plug#end()

let g:ale_linters = { 'javascript': ['eslint'] }
let g:ale_fixers = { 'javascript': ['eslint'], 'typescript': ['prettier', 'tslint'], 'scss': ['prettier'], 'html': ['prettier'], 'reason': ['refmt'] }
let g:airline#extensions#ale#enabled = 1
"
" Search for selected text, forwards or backwards.
vnoremap <silent> * :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy/<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '/\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>
vnoremap <silent> # :<C-U>
  \let old_reg=getreg('"')<Bar>let old_regtype=getregtype('"')<CR>
  \gvy?<C-R>=&ic?'\c':'\C'<CR><C-R><C-R>=substitute(
  \escape(@", '?\.*$^~['), '\_s\+', '\\_s\\+', 'g')<CR><CR>
  \gVzv:call setreg('"', old_reg, old_regtype)<CR>

nnoremap <silent> <C-j> :TlistToggle<CR>
set tags+=$VIM/runtime/doc/
let g:airline#extensions#gen_tags#enabled = 1
