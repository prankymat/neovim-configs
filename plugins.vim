call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-airline/vim-airline'
Plug 'keith/swift.vim'

call plug#end()

" YouCompleteMe conf
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"

" NERDCommenter
filetype plugin on
nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>

" vim-airline
set laststatus=2

" Vim EasyAligh
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)
