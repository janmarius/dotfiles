let g:mapleader = "\<Space>"		" Set leader key
set termguicolors

" Removes pipes | that act as seperators on splits
" note the significant whitespace after the '\' character
" This made an error when running vim
" set fillchars+=vert:\				" Removes pipes that act as seperators on splits

" Noob Mode
"set mouse=a						" Enable your mouse

syntax enable						" Enables syntax highlighing
set nowrap							" Display long lines as just one line
set encoding=utf-8					" The encoding displayed
set fileencoding=utf-8				" The encoding written to file
"set pumheight=10					" Makes popup menu smaller
"set ruler							" Show the cursor position all the time
"set cmdheight=2					" More space for displaying messages
"set iskeyword+=-					" treat dash separated words as a word text object
set splitbelow						" Horizontal splits will automatically be below
set splitright						" Vertical splits will automatically be to the right
"set t_Co=256						" Support 256 colors
"set conceallevel=0					" So that I can see `` in markdown files
set tabstop=4						" Insert 4 spaces for a tab
set softtabstop=4
set shiftwidth=4					" Change the number of space characters inserted for indentation
"set smarttab						" Makes tabbing smarter will realize you have 2 vs 4
"set expandtab						" Converts tabs to spaces
set smartindent						" Makes indenting smart
set incsearch
"set autoindent						" Good auto indent
"set laststatus=0					" Always display the status line
set number relativenumber			" Line numbers
set cursorline						" Enable highlighting of the current line
"set background=dark				" tell vim what the background color looks like
"set showtablin						" Always show tabs
"set noshowmode						" We don't need to see things like -- INSERT -- anymore
set noswapfile
set nobackup						" This is recommended by coc
set undodir=~/.vim/undodir
set undofile
"set nowritebackup					" This is recommended by coc
"set updatetime=300					" Faster completion
"set timeoutlen=500					" By default timeoutlen is 1000 ms
"set formatoptions-=cro				" Stop newline continution of comments
set clipboard+=unnamedplus			" Copy paste between vim and everything else
"set autochdir						" Your working directory will always be the same as your working directory

set ignorecase						" Ignore case in search
set modifiable

set smartcase						" Automatically switch search to case-sensitive when search query contains an uppercase letter.
set colorcolumn=80

"
" For buffers, maybe needed in the future
"
"set hidden							" Required to keep multiple buffers open multiple buffers


"au! BufWritePost $MYVIMRC source % " auto source when writing to init.vm alternatively you can run :source $MYVIMRC

" You can't stop me
"cmap w!! w !sudo tee %
