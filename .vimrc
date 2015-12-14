"=== Colors ===
syntax enable           " enable syntax processing
colorscheme solarized 
"===========

"=== Spaces and Tabs ===
set tabstop=4           " n visual spaces per tab
set softtabstop=4       " n spaces per tab while editing
set expandtab           " make tabs spaces instead of \t
set pastetoggle=<F2>    " enable/disable paste mode with f2 (turn off/on auto-indent)

"=== UI Config ===
set number              " show line numbers
set showcmd             " show command in bottom bar
set cursorline          " show horizontal line under current line
filetype indent on      " load filetype-specific indent files, I use specifically for .vim/indent/python.vim
set lazyredraw          " only redraw when we need to. 
set showmatch           " highlight matching [{()}]

"=== Searching ===
set incsearch           " search as characters are entered
set hlsearch            " highlight matches that are found
" turn off search highlighting with the macro ", "
nnoremap <leader><space> :nohlsearch<CR>

"=== Movement ===
" move vertically by visual line
nnoremap j gj
nnoremap g gk

