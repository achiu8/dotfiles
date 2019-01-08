set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim " add vundle to run time path
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'git://github.com/jonathanfilip/vim-lucius.git'
Plugin 'kien/ctrlp.vim'
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'rking/ag.vim'
Plugin 'git://github.com/tpope/vim-surround.git'
Plugin 'Vimjas/vim-python-pep8-indent'
Plugin 'reasonml-editor/vim-reason'
Plugin 'elmcast/elm-vim'
Plugin 'neovimhaskell/haskell-vim'
call vundle#end()
filetype plugin indent on

syntax on
filetype on

set clipboard=unnamed
set pastetoggle=<F2>

set noswapfile

"cd ~/projects

set guifont=Menlo:h13

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

autocmd Filetype php setlocal ts=4 sw=4 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab

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

nnoremap \ :Ag<SPACE>"
nnoremap K :Ag "\b<C-R><C-W>\b"<CR>:cw<CR>

nnoremap <leader>r :execute "set relativenumber"<CR>

nnoremap <leader>. :noh<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>z :qa<CR>
nnoremap <leader>e :Explore<CR>

command! CopyFilepath !echo -n "%" | pbcopy
nnoremap <leader>f :CopyFilepath<CR>
vnoremap <leader>c :w !pbcopy<CR>

vnoremap <leader>c :!pbcopy<CR>u

let g:jsx_ext_required = 0

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
let g:ctrlp_max_files = 0

if exists("g:ctrl_user_command")
  unlet g:ctrlp_user_command
endif
set wildignore+=*/tmp*/*,*.so,*.swp,*.xml,*.zip,*/vendor/*,*/\.git/*,*/node_modules/*

if executable('ag')
  set grepprg=ag\ --nogroup\ --nocolor
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif

let g:sexp_enable_insert_mode_mappings = 1

nmap <C-l> :CtrlPBuffer<CR>
