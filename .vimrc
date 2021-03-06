set nocompatible              " be iMproved, required
filetype off                  " required

"=====================================================
" Vundle settings
"=====================================================
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'gmarik/vundle'
"---------=== Code/project navigation ===-------------
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'majutsushi/tagbar'
"--------------=== Color scheme  ===------------------
Bundle 'sickill/vim-monokai'
"--------------=== Snippets support ===---------------
Bundle 'MarcWeber/vim-addon-mw-utils'
Bundle 'tomtom/tlib_vim'
Bundle 'garbas/vim-snipmate'
Bundle 'honza/vim-snippets'
"--------------=== Languages support ===--------------
" --- Python ---
Bundle 'klen/python-mode'
Bundle 'davidhalter/jedi-vim'
" --- JavaScript ---
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
Bundle "wookiehangover/jshint.vim"
"---------------=== Helpers ===-----------------------
Bundle 'scrooloose/nerdcommenter'
Bundle 'jpalardy/vim-slime'
"-----------------=== Syntax ===----------------------
Bundle 'jelera/vim-javascript-syntax'
Bundle 'digitaltoad/vim-jade'
Bundle 'elzr/vim-json'
Bundle 'vim-coffee-script'
Bundle 'vim-less'
Bundle 'mustache/vim-mustache-handlebars'
Bundle 'ekalinin/Dockerfile.vim'
Bundle 'godlygeek/tabular'
Bundle 'plasticboy/vim-markdown'
"------------------=== Other ===----------------------
Bundle 'bling/vim-airline'


"=====================================================
" General settings
"=====================================================
syntax on " enable syntax highlighting
"tabs settings
set ts=4
set sts=4
set sw=4

set autoindent smartindent " auto/smart indent
set expandtab " expand tabs to spaces
set smarttab " tab and backspace are smart

set backspace=indent,eol,start " backspace for dummys
let no_buffers_menu=1
set switchbuf=useopen,usetab

let JSHintUpdateWriteOnly=1

"=====================================================
" Appearance
"=====================================================
set ruler " show the cursor pos
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set completeopt-=preview " don't show docs on the top
set gcr=a:blinkon0
set cursorline " highlight current line
set ttyfast " Improves redrawing
set scrolloff=5 " always have at least 5 lines before the window's bottom

" disable bells
set visualbell t_vb=
set novisualbell

set background=dark
colorscheme monokai

set encoding=utf-8
set number "nu - Line numbers on

" highlight more the 80 columns
augroup vimrc_autocmds
    autocmd!
    autocmd FileType python,javascript highlight OverLength ctermfg=red
    autocmd FileType python,javascript match OverLength /\%80v.\+/
    autocmd FileType python,javascript set nowrap
augroup END

let g:nerdtree_tabs_open_on_console_startup = 1
let NERDTreeIgnore=['\~$', '\.pyc$', '\.pyo$']

au BufRead,BufNewFile *.html set filetype=htmldjango

let g:jedi#popup_select_first = 0 " Disable choose first function/method at autocomplete

" highlight extra whitespaces
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/

"=====================================================
" Search & Replace
"=====================================================
set hlsearch " highlight searches
set ignorecase " make searches case-insensitive, unless they contain upper-case letters:
set smartcase
set incsearch " show the `best match so far' as search strings are typed:

"=====================================================
" GUI Stuff
"=====================================================
set mousemodel=extend " Enable mouse support
"set selectmode=mouse
set mousefocus
set mouse=a

"=====================================================
" Backup options
"=====================================================
set backupdir=~/tmp,/tmp " backups (~)
set directory=~/tmp,/tmp " swap files
set backup               " enable backups

"=====================================================
" Python-mode
"=====================================================
" disable autocompleat, use instead jedi-vim
let g:pymode_rope = 0
let g:pymode_rope_completion = 0
let g:pymode_rope_complete_on_dot = 0
" docs
let g:pymode_doc = 0
let g:pymode_doc_key = 'K'
" code check
let g:pymode_lint = 1
let g:pymode_lint_checker = "pyflakes,pep8"
let g:pymode_lint_ignore="E501,W601,C0110"
let g:pymode_lint_write = 1
" syntax
let g:pymode_syntax = 1
let g:pymode_syntax_all = 1
let g:pymode_syntax_indent_errors = g:pymode_syntax_all
let g:pymode_syntax_space_errors = g:pymode_syntax_all
" other
let g:pymode_folding = 0
let g:pymode_virtualenv = 1

"smart ident
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"trim trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"filetype on
"filetype plugin on
filetype plugin indent on

set showcmd " show partial commands in status line and
set laststatus=1
set showmatch " show matching brackets/parenthesis
set shortmess+=filmnrxoOtT " abbrev. of messages (avoids 'hit enter')


"=====================================================
" Aireline
"=====================================================
let g:airline_theme='dark'
let g:airline#extensions#tabline#enabled = 1
let g:airline_enable_branch=1
let g:airline_enable_syntastic=1
let g:airline_theme='dark'
let g:airline_linecolumn_prefix = '¶ '
let g:airline_branch_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'
let g:airline_detect_modified=1
let g:airline_detect_paste=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
set noshowmode


"=====================================================
" Key mapping
"=====================================================
:nmap <F5> :set mouse=a<CR>:set nopaste<CR>:set number<CR>
:nmap <F6> :set mouse=c<CR>:set paste<CR>:set nonumber<CR>
:imap <F5> <Esc>:set mouse=a<CR>:set nopaste<CR>:set number<CR>
:imap <F6> <Esc>:set mouse=c<CR>:set paste<CR>:set nonumber<CR>
:cmap <F5> <Esc><Esc>:set mouse=a<CR>:set nopaste<CR>:set number<CR>
:cmap <F6> <Esc><Esc>:set mouse=c<CR>:set paste<CR>:set nonumber<CR>
:map <F7> :set number!<CR>

" add new line before or after cursor
nmap oo o<Esc>k
nmap OO O<Esc>j

map <C-n> :NERDTreeTabsToggle<CR>
nmap <F8> :TagbarToggle<CR>

" Autoformat
autocmd FileType javascript noremap <buffer> <c-f> :call JsBeautify()<cr>
" for html
autocmd FileType html noremap <buffer> <c-f> :call HtmlBeautify()<cr>
" for css or scss
autocmd FileType css noremap <buffer> <c-f> :call CSSBeautify()<cr>

" Easy window navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

" autocompleate <Ctrl+Space>
inoremap <C-space> <C-x><C-o>

" Save as sudo
cmap w!! w !sudo tee % >/dev/null

" Copy and past word
nmap yw viwy
nmap pw viwp

"=====================================================
" Plugins
"=====================================================
let g:slime_target = "tmux"
