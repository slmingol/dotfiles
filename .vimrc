" General settings
set nocompatible
set term=xterm-256color
set encoding=utf8

" Filetype
filetype plugin on
syntax on
set backspace=indent,eol,start
set tabstop=2
set softtabstop=2
set expandtab
set autoindent

" Search
set hlsearch
set incsearch
set smartcase
set ignorecase

" Layout
set number
set laststatus=2
set noshowmode

" Navigation (Do you have mouse enabled in your term?)
set mouse=a


" Powerline
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
