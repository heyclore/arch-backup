" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'mattn/emmet-vim'
Plugin 'preservim/tagbar'
Plugin 'Jorengarenar/vim-darkness'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
filetype off                 " required
set nocompatible             " be iMproved, required

let g:airline_theme = 'pencil'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let airline#extensions#whitespace#enabled = 0
colorscheme darkness
syntax enable
"set t_Co=256
set relativenumber
set number
set encoding=utf-8
set listchars=eol:¶,space:·
set autochdir
set path+=**
set wildmenu
set showcmd
"set autoread

autocmd Filetype html,css setlocal ts=2 sw=2 expandtab
nmap <F8> :TagbarToggle<CR>
