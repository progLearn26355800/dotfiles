set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

nnoremap <C-k> :w<CR>:!latexmk %<CR>:!evince %:r.pdf &<CR>
colorscheme jellybeans
