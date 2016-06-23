set nocompatible
filetype plugin indent on
syntax enable
so ~/.vim/plugins.vim "Source Plugin configuration file for Vundle
set backspace=indent,eol,start
set number
let mapleader = "/"
set linespace=15
set noerrorbells visualbell t_vb=
set autowriteall
"---------------------Tabs---------------"
" ts = columns tabs is, sw = width on indent operations
" expandtab will replace a tab with the number of spaces in ts
" softtabstop controls how many columns will tab over
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype java setlocal ts=4 sw=4 expandtab
autocmd Filetype php setlocal ts=2 sw=2 expandtab
autocmd Filetype yang setlocal ts=2 sw=2 expandtab
autocmd Filetype xml setlocal ts=4 sw=4 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype make setlocal ts=4 sw=4 
"---------------------Visuals---------------"
colorscheme elflord " see /Applications/MacVim.app/Contents/Resources/vim/runtime/colors
" set t_CO=256
set guifont="Fira Code":h17
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
set ruler
"---------------------Split Management---------------"
" For horiz splits with :sp and vertical splits for :vsp
nmap <C-L> <C-W><C-J>
nmap <C-K> <C-W><C-K>
nmap <C-L> <C-W><C-L>
nmap <C-H> <C-W><C-H>
"---------------------Search---------------"
set hlsearch
set incsearch
"Turn of highlighted search by using /<space>
nmap <Leader><space> :nohlsearch<cr>
"---------------------Mappings------------"
"Edit the vimrc file with /ev
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/snippets/<cr>
nmap <Leader>ep :e ~/.vim/plugins.vim<cr>
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
" Ctrl+] goes into a method and Ctrl+^ goes back
" Ctrl+G shows where you are in the file
" % will match [{( etc...
" To insert the contents of a file, type  :r FILENAME
" :w FILENAME  writes the current Vim file to disk with name FILENAME.
" :r FILENAME  retrieves disk file FILENAME and puts it below the cursor position.
" to use R in edit mode to replace where the cursor is
" to use w and W and e and E to navigate words
" Jump in with CTRL+[, back with CTRL+O
" Can see filetype by doing :set filetype?
" Expand folds with za and collapse with zz
