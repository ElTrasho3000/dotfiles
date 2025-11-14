" ------------------ VIM SETTINGS ------------------
" --------------------------------------------------
" unset vi compatibility
set nocompatible

" --------------------------------------------------
" vim-plug - init plugins

call plug#begin()

Plug 'dense-analysis/ale'

Plug 'preservim/vim-markdown'
Plug 'godlygeek/tabular'

call plug#end()

" --------------------------------------------------
" remap keybinds
inoremap jj <Esc>
vnoremap ff <ESC>

" define cursor behaviour
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" enable syntax colors
syntax on

" enable concealing
set conceallevel=2

" vimdiff colors
highlight DiffAdd ctermbg=green ctermfg=white
highlight DiffDelete ctermbg=red ctermfg=white
highlight DiffChange ctermbg=blue ctermfg=white
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
set smartindent
set autoindent
set expandtab

" --------------------------------------------------
" Enable filetype detection
filetype on

" --------------------------------------------------
" Filetype specific settings
autocmd FileType markdown,html,css,javascript setlocal tabstop=2 shiftwidth=2
autocmd FileType c setlocal shiftwidth=8 tabstop=8
autocmd FileType python setlocal shiftwidth=4 tabstop=4
autocmd FileType make setlocal shiftwidth=4 tabstop=4 et!

" --------------------------------------------------
" Plugins

let g:vim_markdown_folding_disabled = 1

let g:ale_linters = {
\  'sh': ['shellcheck'],
\  'c': ['cc'],
\}

let g:ale_completion_enabled = 0
