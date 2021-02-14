" Turn on syntax highlighting
syntax on

" For plugins to load correctly
filetype plugin indent on
set noswapfile
set nobackup

" Pick a leader key
let mapleader = "\<space>"

" Load plugins here (PlugVim)
call plug#begin('~/.config/nvim/plugged')

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
Plug 'neoclide/coc.nvim'


call plug#end()

" Plugin specific key mappings:
"   netrw settings
nnoremap <leader>ft :NERDTreeToggle<CR>


" Security
set modelines=0

" Show line hybrid numbers
set number
set relativenumber

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
" set termguicolors <- For some reason breaks colors in rxvt ?!
set t_Co=256
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
nmap <leader>fed :tabe ~/dotfiles/neovim/init.vim<CR>

" enable completion with deoplete
" python3 and pynvim must be installed!
" :echo has('python3') -> 1
" pip3 install --user pynvim
" pip3 install msgpack
let g:deoplete#enable_at_startup = 1 

" deoplete clang properties
" [sudo] find / -name libclang.so or libclang.o.1
let g:deoplete#sources#clang#libclang_path='/usr/lib/llvm-9/lib/libclang.so.1'

let g:deoplete#sources#clang#clang_header='/usr/bin/clang'
