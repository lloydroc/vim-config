set nocompatible              " be iMproved, required

so ~/.vim/plugins.vim

syntax enable

set backspace=indent,eol,start
set number
let mapleader = "/"
set linespace=15
set noerrorbells visualbell t_vb=
set autowriteall

"---------------------Visuals---------------"
colorscheme atom-dark
set t_CO=256
set guifont="Fira Code":h17
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
"---------------------Split Management---------------"
" For horiz splits with :sp and vertical splits for :vsp
nmap <C-L> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
