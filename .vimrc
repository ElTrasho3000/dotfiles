" |----------------- VIM SETTINGS -----------------|
" --------------------------------------------------
" unset vi compatibility
set nocompatible

" remap keybinds
inoremap jj <Esc>
vnoremap ff <ESC>

" define cursor behaviour
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" enable syntax colors
syntax on

" vimdiff colors
highlight DiffAdd ctermbg=green ctermfg=white
highlight DiffDelete ctermbg=red ctermfg=white
highlight DiffDelete ctermbg=blue ctermfg=white
highlight DiffText ctermbg=yellow ctermfg=white

" enable line numbers
set number
set relativenumber

" mark current line
set cursorline

" break line after 80 chars
set textwidth=80

" set default indent behaviour
set tabstop=4
set shiftwidth=4
set expandtab
set smartindent
set autoindent

" --------------------------------------------------
" Enable filetype detection
filetype on

" --------------------------------------------------
" Filetype specific settings
autocmd FileType markdown,html,css,javascript setlocal tabstop=2 shiftwidth=2
autocmd FileType c setlocal shiftwidth=8 tabstop=8 et
autocmd FileType python setlocal shiftwidth=4 tabstop=4 et
