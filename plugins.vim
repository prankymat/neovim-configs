call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe'

call plug#end()

" YouCompleteMe conf
let g:ycm_global_ycm_extra_conf = "/Users/Matthias/.configs/nvim/.ycm_extra_conf.py"

" NERDCommenter
filetype plugin on
nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>
