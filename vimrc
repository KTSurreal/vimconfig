set nocompatible 
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab

set cursorline
set cursorcolumn
set number
filetype plugin indent on
syntax enable
set ignorecase
set smartcase
set incsearch
set backspace=indent,eol,start
set ttyfast
set mouse=a
set ttymouse=xterm2

call plug#begin('~/.vim/plugged')
Plug 'bling/vim-airline'
call plug#end()

" *********
" " Airline config
" **********
set laststatus=2 " Always show status line
set noshowmode " Rely on airline's modified status marker
let g:airline_theme = 'dark'

