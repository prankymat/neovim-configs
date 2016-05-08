call plug#begin('~/.config/nvim/plugged')

Plug 'junegunn/vim-easy-align'
Plug 'scrooloose/nerdcommenter'
"Plug 'ervandew/supertab'
Plug 'Valloric/YouCompleteMe'
"Plug 'benekastah/neomake'
Plug 'vim-airline/vim-airline'
Plug 'keith/swift.vim'
Plug 'christoomey/vim-system-copy'
Plug 'tpope/vim-fugitive'
Plug 'lucapette/vim-textobj-underscore'
Plug 'kana/vim-textobj-user'
Plug 'mtth/scratch.vim'
Plug 'Chiel92/vim-autoformat'
Plug 'kien/ctrlp.vim'
Plug 'vim-scripts/repmo.vim'

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

" invoke Ctrl-P
let g:ctrl_map = '<c-p>'
nnoremap <m-p> :CtrlP<space>

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

" repmo repeat motion
let repmo_key = ";"
let repmo_revkey = "\\"

" YouCompleteMe
let g:ycm_global_ycm_extra_conf = "~/.config/nvim/plugged/YouCompleteMe/.ycm_extra_conf.py"
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1
let g:ycm_min_num_of_chars_for_completion = 1
