" Shortcut to compile and run file
autocmd filetype python nnoremap <F4> :w <bar> term python %<CR>
autocmd filetype c nnoremap <F4> :w <bar> term gcc % && ./a.out && rm a.out<CR>
autocmd filetype cpp nnoremap <F4> :w<CR>:tabnew<CR>:term<CR>make run && make clean && exit<CR>
autocmd filetype go nnoremap <F4> :w <bar> term go run %<CR>
autocmd filetype swift nnoremap <F4> :w <bar> term swift %<CR>
