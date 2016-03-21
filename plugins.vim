call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'benekastah/neomake'
Plug 'vim-airline/vim-airline'
Plug 'keith/swift.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

" YouCompleteMe conf
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/.ycm_extra_conf.py"

" NERDCommenter
filetype plugin on
nnoremap ,c :call NERDComment(0,"toggle")<CR>
vnoremap ,c :call NERDComment(0,"toggle")<CR>

" vim-airline
set laststatus=2

" Vim EasyAlign
nmap ga <Plug>(EasyAlign)
xmap ga <Plug>(EasyAlign)

" invoke fuzzy finder
nnoremap <leader>o :FZF<cr>

" Neomake code linter
autocmd! BufWritePost * Neomake
autocmd! BufWinEnter * Neomake
let g:neomake_python_enabled_makers = ['pylint']
