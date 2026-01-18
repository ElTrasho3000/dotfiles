" ------------------ VIM SETTINGS ------------------
" --------------------------------------------------
" Remap keybinds
" Escape remaps
inoremap jj <Esc>
vnoremap ff <ESC>

" Completion remaps
inoremap <expr> <CR> pumvisible() ? "\<C-Y>" : "\<CR>"
inoremap <expr> <C-J> pumvisible() ? "\<C-N>" : "\<C-J>"
inoremap <expr> <C-K> pumvisible() ? "\<C-P>" : "\<C-K>"

" Define cursor behaviour
let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

" Enable syntax colors
syntax on

" Completion options
" set omnifunc=syntaxcomplete#Complete
set completeopt=menu,menuone

" Tags directory for omnicompletion
" See `:help compl-omni-filetypes`
" set tags+=~/.vim/systags

" Enable concealing
set conceallevel=2

" Display all matching files with tab complete
set wildmenu

" vimdiff colors
highlight DiffAdd ctermbg=green ctermfg=white
highlight DiffDelete ctermbg=red ctermfg=white
highlight DiffChange ctermbg=blue ctermfg=white
highlight DiffText ctermbg=yellow ctermfg=white

" Enable line numbers
set number
set relativenumber

" Mark current line
set cursorline

" Break line after 80 chars
set textwidth=80
" Show ruler on 81st column
set colorcolumn=81

" Enable filetype detection
filetype on

" Enable filetype indentation
filetype plugin indent on

" Set default indent behaviour
set tabstop=4
set shiftwidth=4
set autoindent
set expandtab

" --------------------------------------------------
" Autocmds
" Put autocmds in augroups to make sure they load only once
" Filetype specific settings
augroup FileSettings
    autocmd!
    autocmd FileType markdown,html,css,javascript setlocal tabstop=2 shiftwidth=2
    autocmd FileType c setlocal shiftwidth=8 tabstop=8
    autocmd FileType python setlocal shiftwidth=4 tabstop=4
    autocmd FileType make setlocal shiftwidth=4 tabstop=4 noexpandtab
augroup END

" --------------------------------------------------
" vim-plug - init plugins

call plug#begin()

Plug 'dense-analysis/ale'

Plug 'preservim/vim-markdown'
Plug 'godlygeek/tabular'

call plug#end()

" --------------------------------------------------
" Plugins

let g:vim_markdown_folding_disabled = 1
let g:vim_markdown_new_list_item_indent = 2

let g:ale_linters = {
\  'sh': ['shellcheck'],
\  'c': ['cc'],
\}

let g:ale_completion_enabled = 0
