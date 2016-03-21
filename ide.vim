" Shortcut to compile and run file
autocmd filetype python nnoremap <F4> :w <bar> term python %<CR>
autocmd filetype c nnoremap <F4> :w <bar> term gcc % && ./a.out && rm a.out<CR>
autocmd filetype cpp nnoremap <F4> :w <bar> term g++ -std=c++11 % && ./a.out && rm a.out<CR>
autocmd filetype go nnoremap <F4> :w <bar> term go run %<CR>
autocmd filetype swift nnoremap <F4> :w <bar> term swift %<CR>
