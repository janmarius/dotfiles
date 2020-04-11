let mapleader=" "

call plug#begin('~/.vim/plugged')

Plug 'tomasiser/vim-code-dark'
Plug 'norcalli/nvim-colorizer.lua'
Plug 'scrooloose/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

call plug#end()

" Basic Settings
syntax on
"set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
set smartindent
set nowrap
set number relativenumber
set incsearch
set colorcolumn=80
set clipboard+=unnamedplus
set splitbelow splitright

" Automatically switch search to case-sensitive when search query contains an uppercase letter.
set smartcase

set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile

" Color Theme - tomasiser/vim-code-dark
set termguicolors
colorscheme codedark
let g:airline_theme = 'codedark'

" Color Highlighter - norcalli/nvim-colorizer.lua
lua require'colorizer'.setup()

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
