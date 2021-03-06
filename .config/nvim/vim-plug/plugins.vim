"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                 Plugins                                 "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call plug#begin('~/.vim/plugged')

	" Auto pairs for '()' '[]' '{}'
	" https://github.com/jiangmiao/auto-pairs
	Plug 'jiangmiao/auto-pairs'

	" Conquer of Completion - Make your Neovim as smart as VSCode
	" https://github.com/neoclide/coc.nvim
	" Use release branch (recommend)
	"Plug 'neoclide/coc.nvim', {'branch': 'release'}
	" Or build from source code by using yarn: https://yarnpkg.com
	"Plug 'neoclide/coc.nvim', {'do', 'yarn install --frozen-lockfile'}
	
	" fzf is a general-purpose command-line fuzzy finder	
	" https://github.com/junegunn/fzf
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
	Plug 'junegunn/fzf.vim'
	
	" Distraction-free writing in Neovim
	" https://github.com/junegunn/goyo.vim
	Plug 'junegunn/goyo.vim'

	" gruvbox- Designed as a bright theme with pastel 'retro groove' colors
	" https://github.com/morhetz/gruvbox	
	Plug 'morhetz/gruvbox'

	" NERDTree is a file system explorer
	" https://github.com/preservim/nerdtree
	Plug 'preservim/nerdtree'
	
	" Nord Vim - An arctic, north-bluish clean and elegant Vim color theme
	" https://github.com/arcticicestudio/nord-vim
	Plug 'arcticicestudio/nord-vim'

	" Color highlighter for Neovim
	" https://github.com/norcalli/nvim-colorizer.lua
	Plug 'norcalli/nvim-colorizer.lua'

	" A dark Vim/Neovim color scheme
	" https://github.com/joshdick/onedark.vim
	Plug 'joshdick/onedark.vim'

	" Vim plugin for the Oz language
	" https://github.com/Procrat/oz.vim
	Plug 'Procrat/oz.vim'

	" Lean & mean status/tabline
	" https://github.com/vim-airline/vim-airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'

	" Color scheme - Inspired by the Dark+ scheme of Visual Studio Code
	" https://github.com/tomasiser/vim-code-dark
	Plug 'tomasiser/vim-code-dark'

	" A Vim Plugin for Lively Previewing LaTeX PDF Output
	" https://github.com/xuhdev/vim-latex-live-preview
	Plug 'xuhdev/vim-latex-live-preview'

	" A collection of language packs for Vim - Better Syntax Support
	" https://github.com/sheerun/vim-polyglot
	" Plug 'sheerun/vim-polyglot'

	" vimtex is a modern Vim and neovim filetype plugin for LaTeX files
	" https://github.com/lervag/vimtex
	Plug 'lervag/vimtex'

call plug#end()
