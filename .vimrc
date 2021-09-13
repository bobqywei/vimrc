" Enable modern Vim features not compatible with Vi spec.
set nocompatible
filetype plugin indent on
syntax on

""""""""
"colors "
""""""""""
syntax enable           " enable syntax processing
set background=dark
""""""""
" misc "
""""""""
set ttyfast                     " faster redraw
set backspace=indent,eol,start
""""""""""""""
" whitespace "
""""""""""""""
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()
"""""""""""""""""
" spaces & tabs "
"""""""""""""""""
filetype indent on
set tabstop=2           " 2 space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " 2 space tab
set shiftwidth=2
set modelines=1
" set colorcolumn=80
filetype plugin on
set autoindent
"""""""""""""
" ui layout "
"""""""""""""
set number              " show line numbers
set showcmd             " show command in bottom bar
set nocursorline          " highlight current line
set wildmenu
set showmatch           " higlight matching parenthesis
"""""""""""""
" searching "
"""""""""""""
set incsearch           " search as characters are entered
set hlsearch            " highlight all matches
set clipboard=unnamedplus
