
source $HOME/.config/nvim/plugins.vim
source $HOME/.config/nvim/settings.vim
source $HOME/.config/nvim/keybindings.vim
source $HOME/.config/nvim/colorscheme.vim





" Color Highlighter - norcalli/nvim-colorizer.lua
lua require'colorizer'.setup()

" Goyo
map <leader>g :Goyo<CR>

" NERDTree
map <leader>n :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif


