"Use Vim settings, rather then Vi settings (much better!)
set nocompatible
set encoding=utf-8

set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1
"set enc=utf8
"set fencs=utf8,gbk,gb2312,gb18030

"set guifontwide="Hiragino Sans GB"
set background=dark
set t_Co=256
set ruler

let $VIMHOME=$HOME . "/.vim"
let $VIMBUNDLE=$VIMHOME . "/bundle"

" Tabs, spaces, wrapping {{{

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set wrap
" filetype plugin indent on " filetype on
set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class
set cindent         "C style indent
set autoindent

" Exchange ; with :
nnoremap ; :
nnoremap : ;

" Smart way to move between windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

syntax enable
syntax on           "show syntax

"set tabstop=4       "<tab> width
set nu

" have nice $ sign when you use `cw`
set cpoptions+=$

" hi LineNr ctermfg=brown	 ctermbg=black
set incsearch
set hlsearch

execute pathogen#infect()
autocmd vimenter * if !argc() | NERDTree | endif
map <F1> :NERDTreeToggle<CR>
let NERDTreeMinimalUI=1
let NERDTreeDirArrows=1
let NERDTreeQuitOnOpen=1

colorscheme solarized

"autocmd FileType c set tabstop=4
"autocmd FileType html set tabstop=2

set cursorline
"template
"autocmd BufNewFile * silent! Or $HOME/.vim/templates/%.tpl:e
autocmd BufNewFile *.pl 0r $HOME/.vim/templates/pl.tpl
autocmd BufNewFile *.py 0r $HOME/.vim/templates/py.tpl

set dictionary=/usr/share/dict/words
