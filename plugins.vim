call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'benekastah/neomake'
Plug 'vim-airline/vim-airline'
Plug 'keith/swift.vim'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-fugitive'
Plug 'lucapette/vim-textobj-underscore'
Plug 'kana/vim-textobj-user'
Plug 'mtth/scratch.vim'
Plug 'Chiel92/vim-autoformat'

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
let g:neomake_cpp_clang_args = ['-std=c++11', '-fsyntax-only', '-Wall', '-Wextra', '-pedantic', '-Wunused-variable']

" Fugitive shortcuts
nnoremap <leader>ga :Git add .<cr><cr>
nnoremap <leader>gc :Gcommit<cr>
nnoremap <leader>gst :Gstatus<cr>
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gp :Gpush<cr>

" System copy
let os = substitute(system('uname'), "\n", "", "")
if os == "Linux"
    let g:system_copy#copy_command='xclip -selection clipboard'
endif

" Scratch
nnoremap <F2> :ScratchInsert<cr>
inoremap <F3> <esc>:ScratchPreview<cr>
noremap <F3> :ScratchPreview<cr>
let g:scratch_insert_autohide = 0

" Autoformat
nnoremap <silent> <leader>af :Autoformat<cr>
