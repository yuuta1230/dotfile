" for NeoBundle 

filetype plugin indent off

if has('vim_starting')
  set runtimepath+=~/.vim/bundle/neobundle.vim
  call neobundle#begin(expand('~/.vim/bundle/'))
endif

NeoBundleFetch 'Shougo/neobundle.vim'
NeoBundle 'tomasr/molokai' 
NeoBundle 'itchyny/lightline.vim'
NeoBundle 'tpope/vim-fugitive'

call neobundle#end()

NeoBundleCheck

filetype plugin indent on

"for lightline
let g:lightline = {
    \ 'active': {
    \   'left': [ [ 'mode', 'paste' ],
    \             [ 'fugitive', 'readonly', 'filename', 'modified' ] ]
    \ },
    \ 'component': {
    \   'readonly': '%{&filetype=="help"?"":&readonly?"⭤":""}',
    \   'modified': '%{&filetype=="help"?"":&modified?"+":&modifiable?"":"-"}',
    \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}'
    \ },
    \ 'component_visible_condition': {
    \   'readonly': '(&filetype!="help"&& &readonly)',
    \   'modified': '(&filetype!="help"&&(&modified||!&modifiable))',
    \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
    \ }
    \ }


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

" about backup
set nobackup


" about highlight
set showmatch

" highlighting 　space
highlight JpSpace cterm=underline ctermfg=Blue guifg=Blue
au BufRead,BufNew * match JpSpace /　/
