" confs
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set guifont=Ricty-Regular:h16
set showmatch
set showmode
" set autoindent
set tags=tags
set shiftwidth=4
set tabstop=4
set expandtab
set ambiwidth=double
let loaded_matchparen=1
set backspace=indent,eol,start
set hlsearch
set fdm=marker
set number
set history=200
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

set lines=90 columns=150

inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>

"----------------------------------------------------------
"" 文字コードの指定
set enc=utf-8
set fenc=utf-8
set fencs=iso-2022-jp,utf-8,euc-jp,cp932
