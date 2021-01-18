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

call plug#end()
