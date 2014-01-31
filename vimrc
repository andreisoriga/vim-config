" initiate pathogen plugin
execute pathogen#infect()

" remove compatibility with vi
set nocompatible

" Enable filetypes
filetype on
filetype indent on
filetype plugin on
syntax on

" Set separate colorscheme for terminal and gui
set background=dark
" Set base color scheme, will be used by term
colorscheme tomorrow-night-eighties
set linespace=8
" If Vim enters guimode, set 256 color mode and change the colorscheme
if has("gui_running")

    set t_Co=256
    colorscheme flatland

    set guifont=Sauce\ Code\ Powerline\ Semibold:h17

    set guioptions-=T
    set guioptions-=r
    set guioptions-=m
    set guioptions-=L
    set go-=L

    " change mapleader from \
    let g:mapleader=","

endif

set showmode        " always show what mode we're currently editing in
set nowrap          " don't wrap lines
set scrolloff=5     " never get the cursor at top of bottom, let a 5 line buffer
set wildmenu        " enable selection menu
set tags=tags
set backspace=indent,eol,start

" tab stuff
set softtabstop=4
set expandtab
set shiftwidth=4
set shiftround
set smarttab
set tabstop=4       " make tab 4 spaces

" always show the status bar
set laststatus=2
set noshowmode

" Indent stuff
set autoindent
set smartindent
set copyindent

set modifiable      
set number          " set window numbers

set fileencoding=utf-8
set encoding=utf-8
set ignorecase
set smartcase

" Switch buffers without having to save them
set hidden

" lower timeout between mapleader and command execution
set timeout timeoutlen=200 ttimeoutlen=100

" dissable visual and audio bells
set visualbell
set noerrorbells

" write the old file when switching between file
set autowrite

set foldenable      " enable folding
" fold shortcut
nnoremap <leader>ft Vatzf

set mouse=a
set mousehide       " hide mouse when typing

set showcmd         " always show command in status bar

set hlsearch        " highligh searching
set incsearch       " set incremental search
highlight Search cterm=underline
autocmd cursorhold * set nohlsearch
autocmd cursormoved * set hlsearch

set showmatch       " highlight matching brackets

" change mapleader from \
let mapleader=","

" remap j and k to really move a line in paragraph
nnoremap j gj
nnoremap k gk

" remap :noh to , + Space
nnoremap <leader><space> :noh<cr>

" auto change directory to match current file ,cd
nnoremap ,cd :cd %:p:h<CR>:pwd<CR>

" remaps for faster switching between splits
nmap <C-h> <C-w>h
nmap <C-j> <C-w>j
nmap <C-k> <C-w>k
nmap <C-l> <C-w>l

" Add a line above or below current line without changing position or leaving mode
map <leader>d :set paste<CR>m`o<Esc>``:set nopaste<CR>
map <leader>u :set paste<CR>m`O<Esc>``:set nopaste<CR>

" swap files out of the project root
set backupdir=~/.vim/backup//
set directory=~/.vim/swap//

" Save all open buffers when focus lost
autocmd FocusLost silent! wall

command! H let @/=""

" Powerline configurations
python import sys; sys.path.append("/usr/local/lib/python2.7/site-packages/")
python from powerline.vim import setup as powerline_setup
python powerline_setup()
python del powerline_setup
let g:Powerline_symbols = 'fancy'


" Unite
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>f :Unite -start-insert file<CR>
nnoremap <leader>s :<C-u>Unite -start-insert file_rec<CR>
nnoremap <leader>b :Unite -start-insert buffer<CR>
nnoremap <leader>m :Unite -start-insert bookmark<CR>

" Emmet
let g:user_emmet_mode='a'    "enable all function in all mode.
let g:user_emmet_install_global = 0
autocmd FileType html,css,less,php,js EmmetInstall

" tComment
map <leader>c <c-_><c-_>

" MacVim Switch tabs using alt+number
if has("gui_macvim")
    map <D-1> :tabfirst<Cr>
    map <D-2> :tabfirst<Cr>gt
    map <D-3> :tabfirst<Cr>3gt
    map <D-4> :tabfirst<Cr>4gt
    map <D-5> :tabfirst<Cr>5gt
    map <D-6> :tabfirst<Cr>6gt
    map <D-7> :tabfirst<Cr>7gt
    map <D-8> :tabfirst<Cr>8gt
    map <D-9> :tabfirst<Cr>9gt
endif

" Automatically removing all trailing whitespace
autocmd FileType c,cpp,java,php,css,js,less autocmd BufWritePre <buffer> :%s/\s\+$//e

" This has the advantage of not highlighting each space you type at the end of the line, only when you open a file or leave insert mode. Very neat.
" highlight ExtraWhitespace ctermbg=#9D550F guibg=#9D550F
" au ColorScheme * highlight ExtraWhitespace guibg=#9D550F
" au BufEnter * match ExtraWhitespace /\s\+$/
" au InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/
" au InsertLeave * match ExtraWhiteSpace /\s\+$/
