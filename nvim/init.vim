call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'statiolake/lightline-alduin'
Plug 'alessandroyorba/alduin'
Plug 'lifepillar/vim-solarized8'
Plug 'jnurmine/Zenburn'
Plug 'sainnhe/everforest'
Plug 'tpope/vim-surround'
Plug 'rust-lang/rust.vim'
Plug 'raimondi/delimitmate'
call plug#end()


nnoremap <C-c> "+y
vnoremap <C-c> "+y
nnoremap <C-v> "+gP
vnoremap <C-v> "+gP
nnoremap <C-y> "+y
vnoremap <C-y> "+y
nnoremap <C-p> "+gP
vnoremap <C-p> "+gP


nnoremap <C-A> ggVG

nnoremap Q  "_

set tabstop=8
set softtabstop=8 noexpandtab
set shiftwidth=8
set autoindent
set cindent



set clipboard=unnamedplus
set backspace=indent,eol,start
set nowrap
set ttyfast
set incsearch
set hlsearch
set ignorecase
set smartcase
set number relativenumber
set mouse=a
set colorcolumn=80
"set cursorline


set laststatus=0

set guicursor=

"--------------------------------------------------
" DEFAULT
"--------------------------------------------------

set notermguicolors
colorscheme default 

"--------------------------------------------------
" SOLARIZED LOW CONTRAST
"--------------------------------------------------

"set laststatus=0
"let g:lightline = {}
"let g:lightline.colorscheme = 'solarized'
"set background=dark
"set background=light
"set termguicolors
"colorscheme solarized8_low

"--------------------------------------------------
" ZENBURN
"--------------------------------------------------

"set laststatus=0
"set background=dark
"set termguicolors
"colorscheme zenburn
