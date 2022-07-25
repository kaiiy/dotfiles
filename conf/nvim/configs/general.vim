set termguicolors
set background=dark
if !has('gui_running')
	set t_Co=256
endif

set encoding=utf-8
set fileencoding=utf-8
set ttimeout
set ttimeoutlen=0
set history=1000
set clipboard&
set clipboard^=unnamedplus

set number 
set nobackup
set noswapfile
set nowritebackup
set showtabline=2
set noshowmode

set autoindent
set tabstop=4
set shiftwidth=4
set noexpandtab
set scrolloff=8
set laststatus=2

set hlsearch
set incsearch
set smartcase
set ignorecase

set hidden
set cmdheight=2
set updatetime=300
set shortmess+=c
set signcolumn=yes
set backspace=indent,eol,start

nnoremap <ESC><ESC> :noh
nnoremap O :<C-u>call append(expand('.'), '')<Cr>j

inoremap { {}<LEFT>
inoremap [ []<LEFT>
inoremap ( ()<LEFT>
inoremap <silent> jj <ESC>

syntax enable
colorscheme tokyonight

let g:lightline = {
	\ 'colorscheme': 'tokyonight',
	\ 'active': {
	\   'left': [ [ 'mode', 'paste' ],
    \       	  [ 'cocstatus', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component_function': {
    \   'cocstatus': 'coc#status'
    \ },
  \ }
let g:rainbow_active = 1 
let g:cursorhold_updatetime = 100

call plug#begin()
Plug 'itchyny/lightline.vim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'ryanoasis/vim-devicons'
Plug 'mechatroner/rainbow_csv'
Plug 'luochen1990/rainbow'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
# theme
Plug 'ghifarit53/tokyonight-vim', {'do': 'cp colors/* ~/.config/nvim/colors/'}
# filer
Plug 'vim-denops/denops.vim'
Plug 'Shougo/ddu.vim'
call plug#end()

filetype plugin indent on
