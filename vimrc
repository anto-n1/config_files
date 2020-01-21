" VIM config file

" Place this file in your /home directory : /home/$USER/.vimrc
" To reload changes run 'source ~/.vimrc'

" Disable compatibility with VI
set nocompatible

" Enable automatic indent
set autoindent

" Print cursor position
set ruler

" Show minimum 3 lines around of cursor
set scrolloff=3

" No case sensitive when search
set ignorecase

" Enable case sensitive when uppecase detect in search
set smartcase

" Highlight searches
set incsearch
set hlsearch

" Edit terminal tab title with the editing file name  
set title

" Print line numbers
set number

" Enable color syntax
syntax enable

" Disable arrow keys in INSERT mode
imap <up> <nop>
imap <down> <nop>
imap <left> <nop>
imap <right> <nop>

" Disable arrow keys in ESCAPE mode
map <up> <nop>
map <down> <nop>
map <left> <nop>
map <right> <nop>

" Replace arrow keys by I, J, K, L to move
noremap i <up>
noremap j <left>
noremap k <down>
noremap l <right>

" Use H to enter in INSERT mode instead of I
noremap h i
