colorscheme molokai

set expandtab
set tabstop=2
set shiftwidth=2
set softtabstop=2
set autoindent

" nnoremap <C-n> :w<CR>:!gfortran -fbounds-check -pedantic -O -ffpe-trap=invalid,zero,overflow %:r %<CR>
nnoremap <C-n> :w<CR>:!gfortran -fbounds-check -pedantic -o %:r %<CR>
" nnoremap <C-k> :w<CR>:!gfortran module.f90 subprog.f90 -o %:r %<CR>
nnoremap <C-k> :w<CR>:!gfortran module.f90 subprog.f90 -fbounds-check -pedantic -o %:r %<CR>
nnoremap <C-y> :w<CR>:!gfortran module.f90 funcprog.f90  -fbounds-check -pedantic -o %:r %<CR>
" nnoremap <C-m> :w<CR>:!gfortran module.f90 funcprog.f90 subprog.f90 % -fbounds-check  -O -ffpe-trap=invalid,zero,overflow %:r<CR>
nnoremap <C-m> :w<CR>:!gfortran module.f90 funcprog.f90 subprog.f90 -fbounds-check -pedantic -o %:r %<CR>
nnoremap <C-t> :!./%:r<CR>

let fortran_free_source=1
let fortran_fold=1
let b:fortran_do_enddo=1
