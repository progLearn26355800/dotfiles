colorscheme hybrid

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

nnoremap <C-g> :w<CR>:!gcc -o %:r % -lm<CR>
nnoremap <C-P> :w<CR>:!g++ -o %:r % -lm<CR>
nnoremap <C-m> :w<CR>:!gcc -o %:r % module.c -lm<CR>
nnoremap <C-n> :w<CR>:!g++ -o %:r % module.cpp -lm<CR>
nnoremap <C-t> :!./%:r<CR>
