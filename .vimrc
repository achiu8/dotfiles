set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'elmcast/elm-vim'
call vundle#end()

filetype plugin indent on

syntax on
filetype on

set wildmenu
set wildignorecase

set clipboard=unnamed
set pastetoggle=<F2>

set noswapfile

colorscheme lucius
set background=dark

set hlsearch
set incsearch
set ignorecase smartcase
set autoindent
set smartindent
set backspace=indent,eol,start
set relativenumber
set ruler

set ts=2 sw=2 expandtab
set tw=120

set laststatus=2

noremap j gj
noremap k gk

noremap n nzz

nnoremap ]q :cnext<CR>
nnoremap [q :cNext<CR>

nnoremap <C-j> :m .+1<CR>==
nnoremap <C-k> :m .-2<CR>==

vnoremap K k

:let mapleader = ","
nnoremap <leader>v <C-w>v<C-w>l
nnoremap <leader>h <C-w>s<C-w>j

nnoremap <leader>r :execute "set relativenumber"<CR>

nnoremap <leader>. :noh<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>z :qa<CR>
nnoremap <leader>e :Explore<CR>
nnoremap <leader>t :find ./
nnoremap <leader>g :vim 

command! CopyFilepath !echo -n "%" | pbcopy
nnoremap <leader>f :CopyFilepath<CR>
vnoremap <leader>c :!pbcopy<CR>u
