filetype off                  " required
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-vinegar'
Plugin 'scrooloose/nerdtree'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'nathanalderson/yang.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'derekwyatt/vim-scala'
Plugin 'bronson/vim-trailing-whitespace'
call vundle#end()            " required
filetype plugin indent on    " required
