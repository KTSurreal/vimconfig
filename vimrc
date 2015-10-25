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
Plug 'bling/vim-airline'  " statue line 
Plug 'scrooloose/nerdtree' " file system browser
Plug 'scrooloose/syntastic'  " flag syntax error
Plug 'tpope/vim-unimpaired' " paired short cuts with brace keys
Plug 'haya14busa/incsearch.vim' " better incremental search
Plug 'not-napoleon/vim-byline' " Sign work
call plug#end()



" *********
" " Airline config 
" **********
set laststatus=2 " Always show status line
set noshowmode " Rely on airline's modified status marker
let g:airline_theme = 'dark'

" ******
" " Nerd Tree config
map <C-n>  :NERDTreeToggle<CR>
"
" ******
" VIM-Byline
" let g:bylineName='Tozzi'
" iab KT <C-R>=BylineInsert()<cr>    commented out atm....
"
"*****
"INC Search
"
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)  "  ?

" Clear highlighting after finishing search
set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)
"******
" Syntastic config
let g:syntastic_aggregate_errors = 1

let g:syntastic_python_checkers=['flake8', 'pylint']
"always populate error list
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0



