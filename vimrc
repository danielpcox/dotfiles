"
"PLUGINS
"


" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" JavaScript plugins via 
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'elzr/vim-json'
Plug 'othree/jsdoc-syntax.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'itspriddle/vim-jquery'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'moll/vim-node'
Plug 'scrooloose/syntastic'

" Git
Plug 'djoshea/vim-autoread'

" Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'

" Clojure
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Go
Plug 'fatih/vim-go'
Plug 'nsf/gocode'

" Initialize plugin system
call plug#end()




"
" PLUGINS CONFIG
"

" CtrlP config
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'



filetype plugin indent on
syntax enable
highlight LineNr guifg=#050505
set nowrap
set number
set rnu
set incsearch
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
set autochdir
set foldmethod=manual
set cursorline
set ignorecase
set smartcase
set incsearch
set hlsearch
set spelllang=en_us
set gcr=n:blinkon0
set modeline

" nice font for my eyes
set guifont=Fira\ Mono:h12

" gui
nmap tp :tabprev<CR>
nmap tn :tabnext<CR>
set guioptions-=T
set guioptions-=m
set guioptions-=r

