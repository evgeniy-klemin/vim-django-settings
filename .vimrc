"tabs settings
set ts=4
set sts=4
set sw=4
set ai "autoindent - indent at the same level of the previous line
set et
set sta

"mouse
set mouse=a

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
filetype off

call pathogen#infect()
call pathogen#helptags()

filetype plugin indent on


set background=dark
colorscheme solarized


let g:pymode_folding = 0
let g:solarized_termcolors=16

set encoding=utf-8
set number "nu - Line numbers on

:nmap <F5> :set mouse=a<CR>:set nopaste<CR>:set number<CR>
:nmap <F6> :set mouse=c<CR>:set paste<CR>:set nonumber<CR>
:imap <F5> <Esc>:set mouse=a<CR>:set nopaste<CR>:set number<CR>
:imap <F6> <Esc>:set mouse=c<CR>:set paste<CR>:set nonumber<CR>
:cmap <F5> <Esc><Esc>:set mouse=a<CR>:set nopaste<CR>:set number<CR>
:cmap <F6> <Esc><Esc>:set mouse=c<CR>:set paste<CR>:set nonumber<CR>
:map <F7> :set number!<CR>

hi LineNr ctermfg=black ctermbg=gray
au BufRead,BufNewFile *.html set filetype=htmldjango