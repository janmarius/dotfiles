let g:mapleader="\<Space>"

call plug#begin('~/.vim/plugged')

	Plug 'tomasiser/vim-code-dark'
	Plug 'norcalli/nvim-colorizer.lua'
	Plug 'scrooloose/nerdtree'
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
	Plug 'jiangmiao/auto-pairs'				" Auto pairs for '()' '[]' '{}'
	Plug 'junegunn/goyo.vim'

call plug#end()

" Basic Settings
syntax enable
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

" Goyo
map <leader>g :Goyo<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif



" Splits
set splitbelow splitright

" Remap splits navigation to Ctrl + hjkl
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>



" Make adjusting split sizes a bit more friendly
noremap <silent> <C-Left> :vertical resize +3<CR>
noremap <silent> <C-Right> :vertical resize -3<CR>
noremap <silent> <C-Up> :resize +3<CR>
noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K

" Removes pipes | that act as seperators on splits
set fillchars+=vert:\
