" pathogen
call pathogen#infect()

set nocompatible
"colorscheme desert
"set background=dark
"colorscheme solarized
colorscheme shine
highlight LineNr guifg=#050505
set nowrap
set number
set rnu
set incsearch
set tabstop=2
set shiftwidth=2
set expandtab
set autoindent
syntax on
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
"set guifont=DejaVu\ Sans\ Mono\ Bold\ 9
set guifont=Fira\ Mono:h12

" use tp and tn for :tabprev and :tabnext
nmap tp :tabprev<CR>
nmap tn :tabnext<CR>

" omnicomplete improvements
"--------------------------------------------------
set nocp
" set ofu=syntaxcomplete#Complete
" highlight Pmenu guibg=brown gui=bold
" set completeopt=longest,menuone
" inoremap <expr> <C-n> pumvisible() ? '<C-n>' :
"   \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
" inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
"   \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
"-------------------------------------------------- 

"--------------------------------------------------
" autocmd FileType python set omnifunc=pythoncomplete#Complete
" autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
" autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
" autocmd FileType css set omnifunc=csscomplete#CompleteCSS
" autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
" autocmd FileType php set omnifunc=phpcomplete#CompletePHP
" autocmd FileType c set omnifunc=ccomplete#Complete
"-------------------------------------------------- 

" for building ctags database
map <C-F12> :!ctags -R .<CR>

"limit to 80 cols
set textwidth=100
set colorcolumn=100

"hiding toolbars:
set guioptions-=T
set guioptions-=m
set guioptions-=r
nmap <C-F11> :if &guioptions=~'m' \| set guioptions-=m \| else \| set guioptions+=m \| endif<CR>
nmap <C-F7> :if &guioptions=~'r' \| set guioptions-=r \| else \| set guioptions+=r \| endif<CR>

"xterm compatibility stuff
"source $VIMRUNTIME/vimrc_example.vim
"behave xterm

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1

" vim-slime
let g:slime_target = "tmux"

"run NERDTree
"autocmd VimEnter * exe 'NERDTree' | wincmd l
let g:NERDTreeWinPos = "right"

"surround with erb tags
:vmap s5 "zdi<%=h <C-R>z %><Esc>

"setting the default size of the gvim window
":set lines=76
":set columns=100
set lines=28
set columns=100

" enable eclipse style moving of lines
nmap <M-j> mz:m+<CR>`z==
nmap <M-k> mz:m-2<CR>`z==
imap <M-j> <Esc>:m+<CR>==gi
imap <M-k> <Esc>:m-2<CR>==gi
vmap <M-j> :m'>+<CR>gv=`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<CR>gv=`>my`<mzgv`yo`z

" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin indent on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: This enables automatic indentation as you type.
filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.
" The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

" this is mostly a matter of taste. but LaTeX looks good with just a bit
" of indentation.
"set sw=4
" TIP: if you write your \label's as \label{fig:something}, then if you
" type in \ref{fig: and press <C-n> you will automatically cycle through
" all the figure labels. Very useful!
set iskeyword+=:

" stuff I set myself -Daniel
let g:Tex_ViewRule_dvi='evince'
let g:Tex_ViewRule_ps='evince'
let g:Tex_ViewRule_pdf='xpdf'

" specky commands
"let g:speckyBannerKey = "<C-S>b"
"let g:speckyQuoteSwitcherKey = "<C-S>'"
"let g:speckyRunRdocKey = "<C-S>r"
"let g:speckySpecSwitcherKey = "<C-S>x"
"let g:speckyRunSpecKey = "<C-S>s"
"let g:speckyBannerKey = "<Leader>b"
"let g:speckyQuoteSwitcherKey = "<Leader>'"
"let g:speckyRunRdocKey = "<Leader>r"
"let g:speckySpecSwitcherKey = "<Leader>x"
"let g:speckyRunSpecKey = "<Leader>s"
"let g:speckyRunSpecCmd = "spec -fs -r loadpath.rb"
"let g:speckyRunRdocCmd = "ri"
"let g:speckyWindowType = 2
let g:speckyBannerKey = "<C-S>b"
let g:speckyQuoteSwitcherKey = "<C-S>'"
let g:speckyRunRdocKey = "<C-S>r"
let g:speckySpecSwitcherKey = "<C-S>x"
let g:speckyRunSpecKey = "<C-S>s"
let g:speckyRunSpecCmd = "rspec -c -fs -r spec_helper.rb"
let g:speckyRunRdocCmd = "fri -L -f plain"
let g:speckyWindowType = 2

" gist.vim commands
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
"let g:gist_browser_command = 'chromium-browser --app=%URL%'
let g:gist_open_browser_after_post = 1

"GNU screen settings
if match($TERM, "screen")!=-1
  set term=xterm-256color
endif
set term=xterm-256color

" java syntax highlighting all on
let java_highlight_all=1

let Tlist_Ctags_Cmd = "/usr/bin/ctags"
let Tlist_WinWidth = 50
map <F4> :TlistToggle<cr>

"source ~/.vimrc_secrets

" Command-t settings
set wildignore+=*~,.*,target,output,out

" cursor can move one farther than the end of the line
set virtualedit=onemore

" Java settings

autocmd BufRead *.java set include=^#\s*import 
autocmd BufRead *.java set includeexpr='substitute(v:fname,"\\.","/","g").".java"'
map gf <C-W>f
map gc gdb<C-W>f
