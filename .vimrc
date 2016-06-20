set nocompatible

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

"---------------------Search---------------"
set hlsearch
set incsearch
"---------------------Mappings------------"
"Edit the vimrc file with /ev
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/snippets/

"Turn of highlighted search by using /<space>
nmap <Leader><space> :nohlsearch<cr>

"Make NERDTree easier to toggle with Command-1
nmap <D-1> :NERDTreeToggle<cr>
nmap <c-R> :CtrlPBufTag<cr>
nmap <D-e> :CtrlPMRUFiles<cr>
"---------------------Auto-Commands------------"
"Automatically source the vimrc on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
"---------------------Plugins------------"
"/ CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
	  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
  endif
 "/ NERDTree
 let NERDTreeHijackNetrw = 0
"---------------------Notes------------"
"/ Ctrl+] goes into a method and Ctrl+^ goes back
