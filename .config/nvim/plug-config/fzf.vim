" fzf window position
let g:fzf_layout = { 'window': { 'width': 1, 'height': 0.4, 'yoffset': 1, 'border': 'horizontal' } }

" This is the default extra key bindings
let g:fzf_action = {
  \ 'ctrl-t': 'tab split',
  \ 'ctrl-x': 'split',
  \ 'ctrl-v': 'vsplit' }

" Files
nnoremap <silent> <C-p> :Files<CR>

" Git files
nnoremap <silent> <C-g> :GFiles<CR>

" Lines in the current buffer
nnoremap <silent> <C-l> :BLines<CR>

" Open buffers
nnoremap <silent> <C-o> :Buffers<CR>
