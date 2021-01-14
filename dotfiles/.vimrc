" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'mattn/emmet-vim'
Plugin 'preservim/tagbar'
Plugin 'Jorengarenar/vim-darkness'

" All of your Plugins must be added before the following line

call vundle#end()            " required
filetype plugin indent on    " required
filetype off                 " required
set nocompatible             " be iMproved, required

let g:airline_theme = 'base16_grayscale'
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_preview = 1
"let airline#extensions#whitespace#enabled = 0
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
set noshowmode
set nobackup
set nowritebackup
set noswapfile
set cursorline
set cursorcolumn
"set incsearch

"autocmd Filetype html,css,javascript,ejs,php setlocal ts=2 sw=2 expandtab
set ts=2 sw=2 expandtab
nmap <F8> :TagbarToggle<CR>

nnoremap <C-1> 1gt <CR>

"##### FUCNTION #####
function! ConsolePrint()

  exec 'w'

  if &filetype == 'python'
    exec 'bel term python %'
  endif

  if &filetype == 'go'
    exec 'bel term docker run --rm -ti --name jancok -v ' . $PWD . ':/usr/src/app -w /usr/src/app -p 8000:8000 golang:1.15.6-alpine go run %'
  endif

  if &filetype == 'javascript'
    echo 'jancok'
  endif

endfunction

nmap <F2> :call ConsolePrint()<CR>
"##### END FUCNTION #####
