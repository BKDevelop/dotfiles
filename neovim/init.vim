
" Don't try to be vi compatible
set nocompatible

" Helps force plugins to load correctly when it is turned back on below
filetype off

" Pick a leader key
let mapleader = "\<space>"

" Load plugins here (PlugVim)
call plug#begin('~/.config/nvim/plugged')

" Color Theme
Plug 'morhetz/gruvbox'

" Utils
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf.vim'
Plug 'mattn/emmet-vim'

" Language Support
Plug 'dzeban/vim-log-syntax'
Plug 'jceb/vim-orgmode'
Plug 'pangloss/vim-javascript'
Plug 'leafgarland/typescript-vim'
Plug 'rust-lang/rust.vim'

" Syntax check and auto-completion
Plug 'w0rp/ale' " linting
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'zchee/deoplete-jedi', { 'for': 'py' }
Plug 'carlitux/deoplete-ternjs', { 'for': 'js' }
Plug 'mhartington/deoplete-typescript', { 'for': 'ts' }
Plug 'sebastianmarkow/deoplete-rust', { 'for': 'rs' }

call plug#end()

" Plugin specific key mappings:
"   netrw settings
nnoremap <leader>ft :Lexplore<CR>
let g:netrw_banner=0
let g:netrw_winsize=20
let g:netrw_liststyle=3
let g:netrw_localrmdir='rm -r'

" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on

" Security
set modelines=0

" Show line hybrid numbers
set number
set relativenumber

" Show file stats
set ruler

" Blink cursor on error instead of beeping (grr)
set visualbell

" Encoding
set encoding=utf-8

" Whitespace
set wrap
set textwidth=0
set wrapmargin=0
set formatoptions=tcqrn1
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noshiftround

" Cursor motion
set scrolloff=3
set backspace=indent,eol,start
set matchpairs+=<:> " use % to jump between pairs
runtime! macros/matchit.vim

" Allow hidden buffers
set hidden

" Rendering
set ttyfast

" Status bar
set laststatus=2
set statusline=%=%m\ %c\ %P\ %f

" Last line
set showmode
set showcmd

" Searching
nnoremap / /\v
vnoremap / /\v
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmatch
map <leader><space> :let @/=''<cr> " clear search

" Remap help key.
inoremap <F1> <ESC>:set invfullscreen<CR>a
nnoremap <F1> :set invfullscreen<CR>
vnoremap <F1> :set invfullscreen<CR>

" Formatting
map <C-l> gg=G<C-o><C-o>

" Visualize tabs and newlines
set listchars=tab:▸\ ,eol:¬
" Uncomment this to enable by default:
" set list " To enable by default
" Or use your leader key + l to toggle on/off
map <leader>l :set list!<CR> " Toggle tabs and EOL

" Color Scheme
set termguicolors
colorscheme gruvbox

" Costum commands
command Clean execute "%bd | e#"

" Costum movement
imap jj <ESC>
map <leader>w <C-w>

" more convinient scrolling
nmap <M-j> 15gj
nmap <M-k> 15gk

