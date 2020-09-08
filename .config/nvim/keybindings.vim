" Remap splits navigation to Ctrl + hjkl
"nnoremap <C-h> <C-w>h
"nnoremap <C-j> <C-w>j
"nnoremap <C-k> <C-w>k
"nnoremap <C-l> <C-w>l

nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>k :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>


" Use alt + hjkl to resize windows
nnoremap <M-j>    :resize -2<CR>
nnoremap <M-k>    :resize +2<CR>
nnoremap <M-h>    :vertical resize -2<CR>
nnoremap <M-l>    :vertical resize +2<CR>

"" Make adjusting split sizes a bit more friendly
"noremap <silent> <C-Left> :vertical resize +3<CR>
"noremap <silent> <C-Right> :vertical resize -3<CR>
"noremap <silent> <C-Up> :resize +3<CR>
"noremap <silent> <C-Down> :resize -3<CR>

" Change 2 split windows from vert to horiz or horiz to vert
map <Leader>th <C-w>t<C-w>H
map <Leader>tk <C-w>t<C-w>K




" Better tabbing
vnoremap < <gv
vnoremap > >gv






" Better nav for omnicomplete
" inoremap <expr> <c-j> ("\<C-n>")
" inoremap <expr> <c-k> ("\<C-p>")


"" I hate escape more than anything else
"inoremap jk <Esc>
"inoremap kj <Esc>
"
"" Easy CAPS
"inoremap <c-u> <ESC>viwUi
"nnoremap <c-u> viwU<Esc>
"
"" TAB in general mode will move to text buffer
"nnoremap <TAB> :bnext<CR>
"" SHIFT-TAB will go back
"nnoremap <S-TAB> :bprevious<CR>
"
"" Alternate way to save
"nnoremap <C-s> :w<CR>
"" Alternate way to quit
"nnoremap <C-Q> :wq!<CR>
"" Use control-c instead of escape
"nnoremap <C-c> <Esc>
"" <TAB>: completion.
"inoremap <expr><TAB> pumvisible() ? "\<C-n>" : "\<TAB>"



"nnoremap <Leader>o o<Esc>^Da
"nnoremap <Leader>O O<Esc>^Da
