"
"PLUGINS
"

call plug#begin('~/.vim/plugged')

" JavaScript plugins
Plug 'elzr/vim-json'
Plug 'othree/jsdoc-syntax.vim'
Plug 'heavenshell/vim-jsdoc'
Plug 'itspriddle/vim-jquery'
Plug 'othree/javascript-libraries-syntax.vim'
Plug 'moll/vim-node'
Plug 'scrooloose/syntastic'
Plug 'mxw/vim-jsx'
Plug 'Quramy/vim-js-pretty-template'
Plug 'alvan/vim-closetag'
Plug 'neoclide/vim-jsx-improve'

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

call plug#end()




"
" PLUGINS CONFIG
"
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files -co --exclude-standard']
let g:ctrlp_working_path_mode = 'ra'

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

"
" GENERAL
"
filetype plugin indent on
syntax enable
highlight LineNr guifg=#050505
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

