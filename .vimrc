" | ---------------- VIM SETTINGS ---------------- |
" --------------------------------------------------
" unset vi compatibility
set nocompatible

" remap keybinds
inoremap jj <Esc>

" enable syntax colors
syntax enable

" enable line numbers
set number
set relativenumber

" mark current line
set cursorline

" --------------------------------------------------
" Enable filetype detection
filetype on

" Enable filetype-based indenting
filetype indent on

" --------------------------------------------------
" Set default tab behavior
" Number of spaces in a tab
set tabstop=4         
" Number of spaces for indentation
set shiftwidth=4      
" Use spaces instead of tabs
set expandtab         
" Automatically indent based on syntax
set smartindent       
" Maintain the same level of indentation as the previous line
set autoindent        

" --------------------------------------------------
" Filetype specific settings
augroup FileTypeSettings

  autocmd!

  " For Python files, use 4 spaces for indentation
  autocmd FileType python setlocal tabstop=4 shiftwidth=4

  " For JavaScript files, use 2 spaces for indentation
  autocmd FileType md,html,css,javascript setlocal tabstop=2 shiftwidth=2

  " For C/C++ files, use 4 spaces for indentation, but keep tabs
  autocmd FileType c,cpp,go setlocal tabstop=4 shiftwidth=4 noexpandtab 

augroup END
