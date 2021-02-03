" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on
set noswapfile
set nobackup

language en_US


let g:python3_host_prog='c:\python\python.exe'

" Pick a leader key
let mapleader = "\<space>"

" Load plugins here (PlugVim)
call plug#begin('~\AppData\Local\nvim\plugged')

" Color Theme
Plug 'gruvbox-community/gruvbox'

" Utils
Plug 'tpope/vim-surround'
Plug 'easymotion/vim-easymotion'
Plug 'tpope/vim-commentary'
Plug 'junegunn/fzf'
Plug 'mattn/emmet-vim'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'raimondi/delimitmate'

" Language Support
Plug 'sheerun/vim-polyglot' 

" Syntax check and auto-completion
Plug 'w0rp/ale' " linting
Plug 'scrooloose/syntastic'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }


call plug#end()

" Plugin specific key mappings:
" NERDTree 
nnoremap <leader>ft :NERDTreeToggle<CR>

" Security
set modelines=0

" Show line hybrid numbers
set number
set relativenumber

" Show file stats
"set ruler

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

" Last line
" airline will take care of showing mode :)
set noshowmode
set noshowcmd

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
let g:lightline = {
      \ 'colorscheme': 'seoul256',
      \ }

" Costum commands
command Clean execute "%bd | e#"

" Costum movement
imap jk <ESC>
map <leader>w <C-w>

" more convinient scrolling
nmap <M-j> 15gj
nmap <M-k> 15gk

" shortcut for fuzzy search
nmap <leader>ff :FZF<CR>

" change vim working directory to current file
nnoremap <leader>cd :lcd %:p:h<CR>

" open dotfile
nmap <leader>fed :tabe ~\AppData\Local\nvim\init.vim<CR>
nmap <leader>feg :tabe ~\AppData\Local\nvim\ginit.vim<CR>

" enable completion with deoplete
" python3 and pynvim must be installed!
" :echo has('python3') -> 1
" pip3 install --user pynvim
" pip3 install --user neovim
" pip3 install msgpack
let g:deoplete#enable_at_startup = 1 

