let g:go_fmt_comand = "goimports"

augroup vim_go_complete
    autocmd!
    autocmd FileType go inoremap <buffer> . .<C-x><C-o>
augroup END

nnoremap <C-p> :w<CR>:Q<CR>
