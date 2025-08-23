" | ---------------- VIM SETTINGS ---------------- |
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
syntax enable

" enable line numbers
set number
set relativenumber
