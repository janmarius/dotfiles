"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                    Automatic Installation of Plugins                    "
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Automatic Installation for a Fresh Install of Neovim
if empty(glob('~/.config/nvim/autoload/plug.vim'))
	silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
		\ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
	autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Automatic Installation of Missing Plugins on Startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | source $MYVIMRC

  " q to quit out of the PlugInstall overview
  "\|   PlugInstall --sync | q | source $MYVIMRC
  \| endif
