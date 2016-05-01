" With a map leader it's possible to do extra key combinations
" like <leader>w saves the current file
let mapleader = ","
let g:mapleader = ","

" Fast saving
nmap <leader>w :w!<cr>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Quickly open a buffer for scribble
map <leader>q :e ~/buffer<cr>

" Toggle paste mode on and off
map <leader>pp :setlocal paste!<cr>

" Habit making: disable arrow keys
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

" map redo to U
"command U redo
nnoremap U :redo<CR>
nnoremap W b

" Open terminal in new tab
noremap <c-t> :tabnew<CR>:term<CR>

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>

" Move lines
nnoremap <c-k> :m .-2<CR>==
nnoremap <c-j> :m .+1<CR>==
vnoremap <c-k> :m '<-2<CR>gv=gv
vnoremap <c-j> :m '>+1<CR>gv=gv

" Undo all changes
command UndoAll execute "u1|u"

" Diff edits done before save
command Diff execute "w !diff % -"

" visual block indent
vnoremap > >gv
vnoremap < <gv

" cycle through buffers
nnoremap <C-b> :bnext<CR>

" Quick insert in front (within block)
noremap <leader>i (0<c-v>}kI

" Style c++
noremap <c-i> :%!astyle -A14<cr>

" Edit file in new tab
noremap <leader>t :tabedit<space>

" Edit file in this buffer
noremap <leader>e :e<space>

" Switch to next tab
noremap <s-t> :tabnext<cr>

" Show trailing whitespace
match ErrorMsg '\s\+$'

" Disable ex-mode
noremap Q <nop>

" Colon swapped with semicolon
"nnoremap ; :
"nnoremap : ;

" ,d to duplicate line
nnoremap <leader>d Yp

" Write file faster + habit making
nnoremap <leader>w :w<cr>
cabbrev w echoerr ":w disabled, please use ,w instead!"

" Habit making: use ZZ ZQ instead
cabbrev wq echoerr ":wq disabled, please use ZZ instead!"
cabbrev q! echoerr ":q! disabled, please use ZQ instead!"

" Move cursor half page up
nnoremap <c-s> <c-u>
