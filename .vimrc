set rtp+=~/.vim/bundle/vundle/ " add vundle to run time path
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'git://github.com/sjl/badwolf.git'
Bundle 'git://github.com/jonathanfilip/vim-lucius.git'
Bundle 'kien/ctrlp.vim'

set nocompatible
syntax on
filetype on

set clipboard=unnamed

set noswapfile

cd ~/projects

set guifont=Menlo:h13

colorscheme lucius
"colorscheme badwolf
set background=dark

set hlsearch
set incsearch
set ignorecase smartcase
set autoindent
set smartindent
set backspace=indent,eol,start

set ruler

set number
set numberwidth=3

set ts=2 sw=2 expandtab
set tw=80


noremap j gj
noremap k gk
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-h> <c-w>h
nnoremap <C-l> <c-w>l

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

:let mapleader = ","
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1

let g:SimplenoteUsername="achiu8@gmail.com"
let g:SimplenotePassword="simplenote"
let g:SimplenoteVertical=1
