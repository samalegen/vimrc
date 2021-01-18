set t_Co=256
syntax on
colorscheme darkblue
set nocompatible
set nu
set encoding=utf8
set ffs=unix,dos,mac "стандарт использования символов переноса строки в файлах на первом месте находится вариант Unix, где для переноса строки используется только символ \n"


"set cursorline "линия рабочей строки
set autoindent
set smartindent

set laststatus=2 "контролирует, когда и как отображать строку состояния.0 (никогда) 1 только если у вас более двух окон, в строке состояния отображается 2 всегда.

set wrap "nowrap Чтобы отобразить длинные строки как одну строку (т.е. вам нужно прокрутить по горизонтали, чтобы увидеть всю строку) wrap Для визуального переноса строк, то есть строка по-прежнему остается одной строкой текста, но Vim отображает ее на нескольких строках.



"Поиск
set ignorecase
set smartcase
set hlsearch
set incsearch

"отступы
set expandtab "включает замену табов на пробелы"
set smarttab "при нажатии таба в начале строки добавляет количество пробелов равное shiftwidth"
set tabstop=4 "количество пробелов в одном обычном табе"
set softtabstop=4 "количество пробелов в табе при удалении"
set shiftwidth=4
set foldcolumn=0 "отступ между левой частью окна"

"Мышь
set mouse=a "поддержка мыши: n - обычный режим;"
"v - визуальный режим (режим выделения);"
"i - режим вставки;"
"c - режим командой строки;"
"a - все перечисленные ранее режимы;"
"r - для режима 'Нажмите Enter' или запроса ввода информации"

call plug#begin('~/.vim/plugged')
Plug 'sheerun/vim-polyglot'
Plug 'scrooloose/nerdtree', { 'on': 'NERDTreeToggle' }
Plug 'puddl3glum/freepascal-vim'
Plug 'jiangmiao/auto-pairs'
"Plug 'vim-airline/vim-airline'"
Plug 'alvan/vim-closetag'

" --- CSS ---
Plug 'JulesWang/css.vim' " CSS syntax file
Plug 'groenewege/vim-less' " Vim syntax for LESS (dynamic CSS)

" --- HTML ---
Plug 'othree/html5.vim' " HTML5 omnicomplete and sytnax
Plug 'idanarye/breeze.vim'  " Html navigation like vim-easymotion, tag matching, tag highlighting and DOM navigation


call plug#end()




"mapping"
map <C-n> :NERDTreeToggle<CR>

" Languages support
"=====================================================
" --- C/C++/C# ---
autocmd FileType c setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType cpp setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType cs setlocal tabstop=4 softtabstop=4 shiftwidth=4 expandtab
autocmd FileType c setlocal commentstring=/*\ %s\ */
autocmd FileType cpp,cs setlocal commentstring=//\ %s
let c_no_curly_error=1
let g:syntastic_cpp_include_dirs = ['include', '../include']
let g:syntastic_cpp_compiler = 'clang++'
let g:syntastic_c_include_dirs = ['include', '../include']
let g:syntastic_c_compiler = 'clang'

" --- CSS ---
autocmd FileType css set omnifunc=csscomplete#CompleteCSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType css setlocal commentstring=/*\ %s\ */

" --- Erlang ---
autocmd Filetype erlang setlocal omnifunc=erlang_complete#Complete

" --- Elixir ---
autocmd Filetype erlang setlocal omnifunc=erlang_complete#Complete

" --- JavaScript ---
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd BufNewFile,BufRead *.json setlocal ft=javascript
autocmd FileType javascript setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2
autocmd FileType javascript setlocal commentstring=//\ %s
autocmd FileType javascript let b:javascript_fold = 0
let javascript_enable_domhtmlcss=1
let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_javascript_jshint_args='--config ~/.vim/extern-cfg/jshint.json'

" --- HTML ---
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType html setlocal commentstring=<!--\ %s\ -->

" --- Python ---
let python_highlight_all=1
let python_highlight_exceptions=0
let python_highlight_builtins=0
let python_slow_sync=1
autocmd FileType python setlocal completeopt-=preview
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType pyrex setlocal expandtab shiftwidth=4 tabstop=8 softtabstop=4 smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
let g:syntastic_python_checkers = ['flake8', 'python']
let g:syntastic_python_flake8_args='--ignore=E121,E128,E711,E301,E261,E241,E124,E126,E721
\ --max-line-length=80'
