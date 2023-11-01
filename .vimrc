
call plug#begin('~/.vim/plugged')
	Plug 'sonph/onehalf', { 'rtp': 'vim' }
	Plug 'junegunn/goyo.vim'
	Plug 'dylanaraps/wal'
	Plug 'preservim/nerdtree'
	Plug 'preservim/nerdcommenter'
	Plug 'vim-pandoc/vim-pandoc'
	Plug 'vim-pandoc/vim-pandoc-syntax'
	Plug 'vim-pandoc/vim-rmarkdown'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'tpope/vim-fugitive'
	Plug 'sheerun/vim-polyglot'
	Plug 'jreybert/vimagit'
	Plug 'mattn/emmet-vim'
	Plug 'jalvesaq/Nvim-R'
	Plug 'jpalardy/vim-slime', { 'for': 'python' }
	Plug 'hanschen/vim-ipython-cell', { 'for': 'python' }
call plug#end()

set encoding=utf-8

""" sintaxe e cores
syntax on

" bindings
let mapleader = ","
let maplocalleader = " "
map! <C-BS> <C-w>
map <F8> :NERDTreeToggle<CR>
map <F12> :Magit<CR>
map <C-l> :vsplit<CR>
map <C-k> :split<CR>
map <F5> :!make<CR>

"" números
set number
set number relativenumber
set tabstop=2 
set go=c
""" legibilidade do texto
set wrap 
set linebreak
set showbreak=+++
set showmatch
set visualbell
set hlsearch
set smartcase
set ignorecase
set incsearch
set showmode

""" spellchecker 
set spell
set spelllang=pt_br,en

""" tabs
set autoindent
set smarttab
set shiftwidth=2
set softtabstop=2
set ruler

""" histórico 
set undolevels=1000
set history=1000
set wildmenu
set wildmode=longest,list,full


""" clipboard
set clipboard=unnamedplus

"""
let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'default'

""" vim-ipython-cell

let g:slime_target = "vimterminal"
nnoremap <Leader>s :SlimeSend1 ipython --matplotlib<CR>
nnoremap <Leader>i :vertical :terminal<CR>ipython<CR>
let g:slime_python_ipython = 1
