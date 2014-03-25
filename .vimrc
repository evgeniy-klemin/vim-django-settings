"tabs settings
set ts=4
set sts=4
set sw=4
set ai "autoindent - indent at the same level of the previous line
set et
set sta

"mouse
set mouse=a


"vundle config
set nocompatible
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
"репозитории на github
Bundle 'klen/python-mode'
Bundle 'altercation/vim-colors-solarized'
Bundle 'gmarik/vundle'
Bundle 'elzr/vim-json'
Bundle 'scrooloose/nerdtree'
Bundle 'jistr/vim-nerdtree-tabs'
Bundle 'digitaltoad/vim-jade'
Bundle 'maksimr/vim-jsbeautify'
Bundle 'einars/js-beautify'
Bundle 'jelera/vim-javascript-syntax'
Bundle 'wookiehangover/jshint.vim'
Bundle 'w0ng/vim-hybrid'
Bundle 'scrooloose/nerdcommenter'
Bundle 'majutsushi/tagbar'
Bundle 'bling/vim-airline'
"репозитории vim/scripts
Bundle 'vim-coffee-script'
Bundle 'vim-less'
"git репозитории (не на github)
"Bundle 'git://git.wincent.com/command-t.git'


"smart ident
autocmd BufRead *.py set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class

"trim trailing whitespace
autocmd BufWritePre *.py normal m`:%s/\s\+$//e ``

"filetype on
"filetype plugin on
filetype plugin indent on

syntax on " enable syntax highlighting
set cursorline " highlight current line
set ruler " show the ruler
set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
set showcmd " show partial commands in status line and
set laststatus=1
set statusline=%lt;%f\ %=\:\b%n%y%m%r%w\ %l,%c%V\ %P
set backspace=indent,eol,start " backspace for dummys
set showmatch " show matching brackets/parenthesis
set wildmenu
set wildmode=list:longest,full " comand <tab> completion, list matches and
set shortmess+=filmnrxoOtT " abbrev. of messages (avoids 'hit enter')
set showmode " display the current mode
"set spell " spell checking on
"set tabpagemax=15 " only show 15 tabs
"filetype plugin indent on " Automatically detect file types.
"set incsearch " find as you type search
"set hlsearch " highlight search terms
"set wrap " wrap long lines
"set shiftwidth=4 " use indents of 4 spaces
"set noexpandtab " tabs are tabs, not spaces
"set pastetoggle=<f12> " pastetoggle (sane indentation on pastes)
"set comments=sl:/*,mb:*,elx:*/ " auto format comment blocks
"setlocal omnifunc=syntaxcomplete#Complete " activate autocomplete
"(intellisense)
"set cot+=menuone " show preview of function prototype


" Pathogen load
"filetype off
"call pathogen#infect()
"call pathogen#helptags()
"filetype plugin indent on


"let g:hybrid_use_iTerm_colors = 1
"let g:hybrid_use_Xresources = 1
let g:solarized_termcolors = 256
set background=dark
colorscheme solarized
"colorscheme hybrid

" aireline
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

let g:pymode_folding = 0

set encoding=utf-8
set number "nu - Line numbers on

:nmap <F5> :set mouse=a<CR>:set nopaste<CR>:set number<CR>
:nmap <F6> :set mouse=c<CR>:set paste<CR>:set nonumber<CR>
:imap <F5> <Esc>:set mouse=a<CR>:set nopaste<CR>:set number<CR>
:imap <F6> <Esc>:set mouse=c<CR>:set paste<CR>:set nonumber<CR>
:cmap <F5> <Esc><Esc>:set mouse=a<CR>:set nopaste<CR>:set number<CR>
:cmap <F6> <Esc><Esc>:set mouse=c<CR>:set paste<CR>:set nonumber<CR>
:map <F7> :set number!<CR>

map <C-n> :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_console_startup = 1

nmap <F8> :TagbarToggle<CR>

"hi LineNr ctermfg=black ctermbg=gray
au BufRead,BufNewFile *.html set filetype=htmldjango

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

" Save as sudo
cmap w!! w !sudo tee % >/dev/null

set nobackup
