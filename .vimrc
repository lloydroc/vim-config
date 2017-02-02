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
set laststatus=2 "Always show status bar
"---------------------Tabs---------------"
" ts = columns tabs is, sw = width on indent operations
" expandtab will replace a tab with the number of spaces in ts
" softtabstop controls how many columns will tab over
autocmd Filetype sh setlocal ts=4 sw=4 expandtab
autocmd Filetype cpp setlocal ts=4 sw=4 expandtab
autocmd Filetype c setlocal ts=4 sw=4 expandtab
autocmd Filetype html setlocal ts=2 sw=2 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype java setlocal ts=4 sw=4 expandtab
autocmd Filetype scala setlocal ts=4 sw=4 expandtab
autocmd Filetype php setlocal ts=2 sw=2 expandtab
autocmd Filetype yang setlocal ts=2 sw=2 expandtab
autocmd Filetype python setlocal ts=2 sw=2 expandtab
autocmd Filetype xml setlocal ts=2 sw=2 expandtab
autocmd Filetype yaml setlocal ts=2 sw=2 expandtab
autocmd Filetype make setlocal ts=4 sw=4
autocmd Filetype perl setlocal ts=4 sw=4 expandtab
autocmd Filetype lux setlocal ts=2 sw=2 expandtab
autocmd BufNewFile,BufRead,FileReadPost,FilterReadPost * if match(getline(1),"\.lux") >= 0 | set filetype=lux | endif
"---------------------Visuals---------------"
set background=dark
colorscheme solarized " see /Applications/MacVim.app/Contents/Resources/vim/runtime/colors or ~/.vim/colors
hi Visual guifg=Black guibg=Yellow gui=none
" set t_CO=256
set guifont=Fira_Code:h12
" set macligatures
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
"Turn off highlighted search by using /<space>
nmap <Leader><space> :nohlsearch<cr>
"---------------------Mappings------------"
"Edit the vimrc file with /ev
nmap <Leader>ev :tabedit $MYVIMRC<cr>
nmap <Leader>es :e ~/.vim/snippets/<cr>
nmap <Leader>ep :e ~/.vim/plugins.vim<cr>
nmap <Leader>make :!make<cr>
nmap <Leader>mclean :!make clean<cr>
"Make NERDTree easier to toggle with Command-1
nmap <D-1> :NERDTreeToggle<cr>
nmap <c-t> :CtrlPBufTag<cr>
nmap <c-r> :CtrlPMRUFiles<cr>
"Remove trailing whitepace
nmap <Leader>rtw :%s/\s\+$//e<CR>
"---------------------Auto-Commands------------"
"Automatically source the vimrc on save
augroup autosourcing
	autocmd!
	autocmd BufWritePost .vimrc source %
augroup END
"---------------------Plugins------------"
"/ CtrlP
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|class\|cisco-ios\|netsim\|ncs-cdb\|state\|logs\|packages/juniper-junos\'
"let g:ctrlp_user_command = 'find %s -type f | grep -v "`cat .ctrlpignore`"'
let g:ctrlp_autoignore_extension = 0
let g:ctrlp_match_window = 'top,order:ttb,min:1,max:30,results:30'
let g:ctrlp_cache_dir = $HOME . '/.cache/ctrlp'
if executable('ag')
	let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'
endif
"/ NERDTree
let NERDTreeHijackNetrw = 0
"---------------------Calls------------"
nmap gm :call cursor(0, len(getline('.'))/2)<cr>
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
