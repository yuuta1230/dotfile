" for NeoBundle 

filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif


NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tomasr/molokai' 

call neobundle#end()

NeoBundleCheck

filetype plugin indent on

" syntax highlight
syntax on
colorscheme molokai
set t_Co=256

" tab ==> space 4
set expandtab
set tabstop=4
set shiftwidth=4

"about indent
set autoindent

" about cursor
set cursorline
set ruler

" about search
set hlsearch

" about command
set showcmd
set showmode
set laststatus=2
set statusline=%<%m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).':'.&ff.']'}%y\ %F%=%l,%c%V%8P

" about backup
set nobackup

" about highlight
set showmatch

" highlighting 　space
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/
