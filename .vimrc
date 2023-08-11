set bg=dark
set hlsearch
set incsearch
set clipboard=unamedplus
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set autoindent
set smartindent
set mouse=a
set wrap
set linebreak
set breakindent
set showbreak=++\
set fileformat=unix
set nocompatible
syntax enable
set encoding=utf-8
set number relativenumber
set wildmode=longest,list,full
set splitbelow splitright
set showmatch
filetype plugin on
set omnifunc=syntaxcomplete
call plug#begin()

Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-eunuch'
Plug 'tpope/vim-surround'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'altercation/vim-colors-solarized'
Plug 'valloric/youcompleteme'
Plug 'sheerun/vim-polyglot'
call plug#end()
