set rtp+=~/.vim/bundle/Vundle.vim " add vundle to run time path
call vundle#rc()
Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle 'git://github.com/sjl/badwolf.git'
Bundle 'git://github.com/jonathanfilip/vim-lucius.git'
Bundle 'kien/ctrlp.vim'
Bundle 'pangloss/vim-javascript'
Bundle 'rking/ag.vim'
Bundle 'git://github.com/tpope/vim-surround.git'

execute pathogen#infect()

set nocompatible
syntax on
filetype on
filetype plugin indent on

set clipboard=unnamed

set noswapfile

"cd ~/projects

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
set relativenumber

set ts=2 sw=2 expandtab
set tw=120

noremap j gj
noremap k gk
nnoremap <C-j> <c-w>j
nnoremap <C-k> <c-w>k
nnoremap <C-h> <c-w>h
nnoremap <C-l> <c-w>l

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
map <F2> :vim "<C-r>"" app/**/*.rb app/**/*.html.erb<CR>
map <F3> :vim "<C-r>"" app/**/*.html.erb app/**/*.js<CR>
map <F4> :vim "<C-r>"" app/**/*.rb spec/**/*.rb<CR>
nnoremap <leader>m :execute "rightbelow sp \| Ag \"def " . expand("<cword>") . "\""<CR>
nnoremap <leader>b :execute "rightbelow sp \| Ag \"def self." . expand("<cword>") . "\""<CR>
nnoremap <leader>c :execute "rightbelow sp \| Ag \"class " . expand("<cword>") . "\""<CR>

nnoremap <leader>r :execute "set relativenumber"<CR>

nnoremap <leader>. :noh<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>e :Explore<CR>

command! CopyFilepath !echo -n "%" | pbcopy
nnoremap <leader>f :CopyFilepath<CR>

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

let g:SimplenoteUsername="achiu8@gmail.com"
let g:SimplenotePassword="simplenote"
let g:SimplenoteVertical=1
