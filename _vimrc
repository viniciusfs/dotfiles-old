" .vimrc file
" Vinicius Figueiredo <viniciusfs@gmail.com>

set nocompatible
set backspace=indent,eol,start

syntax on

" Set a nice color scheme while running GVim
if has("gui_running")
  colorscheme fruity
else
  colorscheme evening
endif

" Enable filetype plugins and indention
filetype on
filetype plugin on

set ruler
set guioptions-=T
set completeopt-=preview
set gcr=a:blinkon0
if has("gui_running")
  set cursorline
endif

set smartindent

set cmdheight=2
set laststatus=2
set statusline=[%l,%v\ %P%M]\ %f\ %r%h%w\ (%{&ff})
set showcmd

" Line numbers, F2 to enable/disable
set number
nnoremap <F2> :set nonumber!<CR>:set foldcolumn=0<CR>

set smarttab
set tabstop=8

" File encoding and format
set enc=utf-8
set fileformats=unix,dos,mac

" Python
autocmd FileType python setlocal expandtab shiftwidth=4 tabstop=8
\ formatoptions+=croq softtabstop=4 smartindent
\ cinwords=if,elif,else,for,while,try,except,finally,def,class,with
let python_highlight_all=1
let python_highlight_exceptions=0
let python_highlight_builtins=0

" PHP
autocmd FileType php setlocal shiftwidth=8 tabstop=8 softtabstop=8

" CSS
autocmd FileType css setlocal expandtab shiftwidth=4 tabstop=4 softtabstop=4

" HTML
autocmd FileType html,xhtml,xml setlocal expandtab shiftwidth=2 tabstop=2 softtabstop=2

" vim
autocmd FileType vim setlocal expandtab shiftwidth=2 tabstop=8 softtabstop=2
