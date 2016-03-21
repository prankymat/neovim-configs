" Returns true if paste mode is enabled
function! HasPaste()
    if &paste
        return 'PASTE MODE  '
    endif
    return ''
endfunction

" soft tab of space 2
set expandtab
set shiftwidth=2
set softtabstop=2

set number
set rnu

autocmd InsertEnter * :set nornu
autocmd InsertLeave * :set rnu

syntax on

" Use spaces instead of tabs
set expandtab

" Be smart when using tabs ;)
set smarttab

"Always show current position
set ruler
