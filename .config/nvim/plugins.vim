call plug#begin('~/.vim/plugged')

	" Auto pairs for '()' '[]' '{}'
	" https://github.com/jiangmiao/auto-pairs
	Plug 'jiangmiao/auto-pairs'

	" Distraction-free writing in Neovim
	" https://github.com/junegunn/goyo.vim
	Plug 'junegunn/goyo.vim'

	" NERDTree is a file system explorer
	" https://github.com/preservim/nerdtree
	Plug 'preservim/nerdtree'

	" A dark Vim/Neovim color scheme
	" https://github.com/joshdick/onedark.vim
	Plug 'joshdick/onedark.vim'

	" Color highlighter for Neovim
	" https://github.com/norcalli/nvim-colorizer.lua
	Plug 'norcalli/nvim-colorizer.lua'

	" Lean & mean status/tabline
	" https://github.com/vim-airline/vim-airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Color scheme - Inspired by the Dark+ scheme of Visual Studio Code
	" https://github.com/tomasiser/vim-code-dark
	Plug 'tomasiser/vim-code-dark'

call plug#end()
