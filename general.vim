"Load custom .vimrc in project directories
set exrc

" Switch between buffers without saving first
set hidden

" Prevent moving cursor when exiting insert mode
au InsertLeave * call cursor([getpos('.')[1], getpos('.')[2]+1])

" Turn backup off
set nobackup
set nowb
set noswapfile

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Highlight search results
set hlsearch

" Makes search act like search in modern browsers
set incsearch 

" Don't redraw while executing macros (good performance config)
set lazyredraw 

" For regular expressions turn magic on
set magic

" Show matching brackets when text indicator is over them
set showmatch 
