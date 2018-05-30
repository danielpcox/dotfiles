"
"PLUGINS
"

call plug#begin('~/.vim/plugged')

" JavaScript
Plug 'elzr/vim-json'
Plug 'othree/jsdoc-syntax.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'itspriddle/vim-jquery'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'moll/vim-node'
"Plug 'scrooloose/syntastic'
Plug 'mxw/vim-jsx'
Plug 'Quramy/vim-js-pretty-template'
Plug 'alvan/vim-closetag'
Plug 'neoclide/vim-jsx-improve'
Plug 'pangloss/vim-javascript'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Git
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'shumphrey/fugitive-gitlab.vim'
Plug 'airblade/vim-gitgutter'
Plug 'djoshea/vim-autoread'

" Navigation
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'ctrlpvim/ctrlp.vim'
Plug 'Yggdroot/indentLine'
Plug 'sbdchd/indentline.vim'

" Clojure
Plug 'guns/vim-clojure-static', { 'for': 'clojure' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
Plug 'tpope/vim-classpath', { 'for': 'clojure' }

" Go
Plug 'fatih/vim-go'
Plug 'nsf/gocode'
Plug 'uarun/vim-protobuf'

" Miscellaneous
Plug 'lifepillar/vim-solarized8' " solarized colorscheme
Plug 'chrisbra/NrrwRgn' " Edit a part of your file at a time with :NR
Plug 'wesQ3/vim-windowswap' " Swap window panes with ,ww


call plug#end()




"
" PLUGINS CONFIG
"
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'
let g:fugitive_gitlab_domains = ['https://gitlab.363-283.io']

"NERDTree config
function! ToggleNERDTreeFind()
  if !exists("g:NERDTree")
    execute ':NERDTreeToggle'
  else
    if g:NERDTree.IsOpen()
      execute ':NERDTreeClose'
    else
      execute ':NERDTreeFind'
    endif
  endif
endfunction

nnoremap <C-n> :call ToggleNERDTreeFind()<CR>

" Deoplete
let g:deoplete#enable_at_startup = 1

"
" GENERAL
"
let mapleader=","
filetype plugin indent on
runtime macros/matchit.vim
syntax enable
autocmd BufEnter * :syntax sync fromstart
highlight LineNr guifg=#050505
set mouse=nicr
set nowrap
set number
set ruler
set rnu
set incsearch
set backspace=2
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
set guifont=Fira\ Mono:h12
nmap tp :tabprev<CR>
nmap tn :tabnext<CR>
set guioptions-=T
set guioptions-=m
set guioptions-=r
set diffopt+=iwhite
set clipboard=unnamedplus

" Color scheme

set background=dark
colorscheme solarized8
let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
