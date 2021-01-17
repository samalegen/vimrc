set t_Co=256
syntax on
colorscheme darkblue
set nocompatible
set nu

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'puddl3glum/freepascal-vim'

call plug#end()
