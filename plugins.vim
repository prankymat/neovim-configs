call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'benekastah/neomake'
Plug 'vim-airline/vim-airline'
Plug 'keith/swift.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

call plug#end()

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
nnoremap <leader>o :tabnew<CR>:FZF<cr>

" Neomake code linter
autocmd! BufWritePost * Neomake
autocmd! BufWinEnter * Neomake
let g:neomake_python_enabled_makers = ['pylint']
let g:neomake_cpp_enable_markers=['clang']
let g:neomake_cpp_clang_args = ['-std=c++11', '-Wall', '-Wextra', '-pedantic', '-Wunused-variable']
