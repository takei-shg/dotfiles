if &compatible
  set nocompatible
endif
" プラグインが実際にインストールされるディレクトリ
let s:dein_dir = expand('~/.vim/dein.vim')
" dein.vim 本体
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'
" dein.vim がなければ github から落としてくる
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif

" 設定開始
if dein#load_state(s:dein_dir)
  call dein#begin(s:dein_dir)

  " プラグインリストを収めた TOML ファイル
  " 予め TOML ファイル（後述）を用意しておく
  let g:rc_dir    = expand('~/.vim/rc')
  let s:toml      = g:rc_dir . '/dein.toml'
  let s:lazy_toml = g:rc_dir . '/dein_lazy.toml'

  " TOML を読み込み、キャッシュしておく
  call dein#load_toml(s:toml,      {'lazy': 0})
  call dein#load_toml(s:lazy_toml, {'lazy': 1})

  " 設定終了
  call dein#end()
  call dein#save_state()
endif

" もし、未インストールものものがあったらインストール
if dein#check_install()
  call dein#install()
endif


filetype plugin indent on
syntax enable
filetype off

" bundle set
" let g:unite_enable_start_insert=1
"" Disable AutoComplPop.
let g:acp_enableAtStartup = 0
"" Use neocomplcache.
"let g:neocomplcache_enable_at_startup = 1
"" Use smartcase.
let g:neocomplcache_enable_smart_case = 1
"" Use camel case completion.
let g:neocomplcache_enable_camel_case_completion = 0
"" Use underbar completion.
let g:neocomplcache_enable_underbar_completion = 0
"" Set minimum syntax keyword length.
let g:neocomplcache_min_syntax_length = 5
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
"" Define dictionary.
let g:neocomplcache_dictionary_filetype_lists = {
\ 'default' : '',
\ 'vimshell' : $HOME.'/.vimshell_hist',
\ 'scheme' : $HOME.'/.gosh_completions',
\ 'php' : $HOME.'/.vim/dictionary/PHP.dict'
\ }
"" Enable heavy omni completion.
if !exists('g:neocomplcache_omni_patterns')
let g:neocomplcache_omni_patterns = {}
endif

" confs
syntax on
set background=dark
let g:solarized_termcolors=256
colorscheme solarized
set showmatch
set matchtime=3
set showmode
" set autoindent
" set tags=tags
set shiftwidth=1
set tabstop=2
set expandtab
set ambiwidth=double
let loaded_matchparen=1
set backspace=indent,eol,start
set fdm=marker
" set number
set history=200
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P
set ff=unix

" http://lambdalisue.hatenablog.com/entry/2013/06/23/071344
set ignorecase
set smartcase
set incsearch
set hlsearch

set shiftround
set infercase
set hidden
set switchbuf=useopen

set matchpairs& matchpairs+=<:>

" set nowritebackup
set nobackup
set noswapfile

set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

inoremap <C-j> <ESC>

nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
" nnoremap <C-n> gt
" nnoremap <C-p> gT
nnoremap <C-x> :bd<CR>

"Escの2回押しでハイライト消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>

nmap ,/ :s;^;//;<CR>:nohlsearch<CR>
nmap ,\ :s;^\([\t ]*\);\1//;<CR>:nohlsearch<CR>
nmap ,c :s;//;;<CR>:nohlsearch<CR>
vmap ,/ :s;^;//;<CR>:nohlsearch<CR>
vmap ,\ :s;^\([\t ]*\);\1//;<CR>:nohlsearch<CR>
vmap ,c :s;//;;<CR>:nohlsearch<CR>

set fileencodings=utf-8,sjis,cp932,euc-jp

" cmdline editing
:cnoremap <C-A> <Home>
:cnoremap <C-F> <Right>
:cnoremap <C-B> <Left>
:cnoremap <Esc>b <S-Left>
:cnoremap <Esc>f <S-Right>

" 2012/Dec/24 yuroyoro
let g:Powerline_symbols = 'fancy'

set clipboard=unnamed,autoselect

" im_control.vim
" 「日本語入力固定モード」のvi協調モードを無効化
" let IM_vi_CooperativeMode = 0
" " 挿入モード終了時にIME状態を保存しない
" inoremap <silent> <ESC> <ESC>:IMCtrl('Off')<CR>
" inoremap <silent> <C-[> <ESC>:IMCtrl('Off')<CR>

let Tlist_Use_Right_Window=1
let Tlist_Enable_Fold_Column=0
let Tlist_Show_One_File=1 " especially with this one
let Tlist_Compact_Format=1
let Tlist_Ctags_Cmd='/opt/local/bin/ctags'
set updatetime=1000
" nmap ,t :!(cd %:p:h;ctags *)& " Maps the updates of tags to key ,t.
set tags=tags; " The ';' at the end will cause the ctags plugin to search for current dir and above dirs until it find a tag file.

nmap <F8> :TagbarToggle<CR>
nnoremap <C-_> :pop<CR>

" Add the following below if you want to generate ctags upon saving a file
" " Auto-generate ctags upon making changes to a file
autocmd BufWritePost *.erl :silent !(cd %:p:h;ctags *)&
"
" " If you want to auto compile (erlc) upon saving a file, then add that one
" as well
" " Run erlc on the file being saved
" autocmd BufWritePost *.erl :!erlc <afile>

