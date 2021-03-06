" Pathogen
execute pathogen#infect()

" General
set history=700
set autoread
set magic
set showmatch " Brackets
set noerrorbells
set novisualbell
set mouse=a
set number

filetype plugin on
filetype indent on

" Searching
set ignorecase
set smartcase
set hlsearch
set incsearch

" Colors and fonts
syntax enable
set encoding=utf8
set ffs=unix,mac,dos
colorscheme distinguished

" Fix some junk
set nobackup
set nowb
set noswapfile
set nocompatible

" Indents
set expandtab
set smarttab
set shiftwidth=2
set tabstop=2

set ai " Auto Indent
set si " Smart Indent
set wrap
