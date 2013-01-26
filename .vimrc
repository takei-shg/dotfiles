"vundle
set nocompatible
filetype off

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" for basis
Bundle 'Shougo/vimproc'
Bundle 'Shougo/unite.vim'
" Bundle 'Shougo/neocomplcache'
" Bundle 'tpope/vim-surround'

" for files
Bundle 'Shougo/vimshell'
Bundle 'Shougo/vimfiler'
Bundle 'scrooloose/nerdtree'

" for Syntastic
"Bundle 'scrooloose/syntastic'

" for Haskell
" Bundle 'eagletmt/ghci-vim'
" Bundle 'eagletmt/ghcmod-vim'
" Bundle 'eagletmt/unite-haddock'
" Bundle 'ujihisa/neco-ghc'
" Bundle 'ujihisa/unite-haskellimport'

" for Coq
Bundle 'eagletmt/coqtop-vim'

" for xml
Bundle 'mattn/zencoding-vim'

" for tmux status line
Bundle 'Lokaltog/vim-powerline'
Bundle 'altercation/vim-colors-solarized'
" clipboard
Bundle 'kana/vim-fakeclip'

" Japanese-IME
" im_control.vim is installed into .vim/plugin.
" vundle cannot install im_control.vim.
" Bundle 'fuenor/im_control.vim' 

filetype plugin indent on

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
set showmode
set tabstop=4
set autoindent
set tags=tags
set shiftwidth=4
set ambiwidth=double
let loaded_matchparen=1
set backspace=indent,eol,start
set hlsearch
set fdm=marker
set number
set history=200
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

nnoremap j gj
nnoremap k gk
vnoremap j gj
vnoremap k gk

inoremap <C-j> <ESC>

nnoremap <C-n> :bn<CR>
nnoremap <C-p> :bp<CR>
"Escの2回押しでハイライト消去
nmap <Esc><Esc> :nohlsearch<CR><Esc>

nmap ,/ :s;^;//;<CR>:nohlsearch<CR>
nmap ,\ :s;^\([\t ]*\);\1//;<CR>:nohlsearch<CR>
nmap ,c :s;//;;<CR>:nohlsearch<CR>
vmap ,/ :s;^;//;<CR>:nohlsearch<CR>
vmap ,\ :s;^\([\t ]*\);\1//;<CR>:nohlsearch<CR>
vmap ,c :s;//;;<CR>:nohlsearch<CR>

set fileencodings=utf-8,sjis,cp932,euc-jp

" 2012/Dec/24 yuroyoro
let g:Powerline_symbols = 'fancy'

set clipboard=unnamed,autoselect
" unite
nnoremap [unite] <Nop>
nmap <Space>f [unite]

"インサートモードで開始しない
let g:unite_enable_start_insert = 0

" For ack.
if executable('ack-grep')
	let g:unite_source_grep_command = 'ack-grep'
	let g:unite_source_grep_default_opts = '--no-heading --no-color -a'
	let g:unite_source_grep_recursive_opt = ''
endif

"file_mruの表示フォーマットを指定。空にすると表示スピードが高速化される
let g:unite_source_file_mru_filename_format = ''

"data_directory はramdiskを指定
" if has('win32')
" 	let g:unite_data_directory = 'R:\.unite'
" elseif  has('macunix')
" 	let g:unite_data_directory = '/Volumes/RamDisk/.unite'
" else
" 	let g:unite_data_directory = '/mnt/ramdisk/.unite'
" endif

"bookmarkだけホームディレクトリに保存
let g:unite_source_bookmark_directory = $HOME . '/.unite/bookmark'
 
"現在開いているファイルのディレクトリ下のファイル一覧。
"開いていない場合はカレントディレクトリ
nnoremap <silent> [unite]f :<C-u>UniteWithBufferDir -buffer-name=files file<CR>
"バッファ一覧
nnoremap <silent> [unite]b :<C-u>Unite buffer<CR>
"レジスタ一覧
nnoremap <silent> [unite]r :<C-u>Unite -buffer-name=register register<CR>
"最近使用したファイル一覧
nnoremap <silent> [unite]m :<C-u>Unite file_mru<CR>
"ブックマーク一覧
nnoremap <silent> [unite]c :<C-u>Unite bookmark<CR>
"ブックマークに追加
nnoremap <silent> [unite]a :<C-u>UniteBookmarkAdd<CR>
"uniteを開いている間のキーマッピング
augroup vimrc
	autocmd FileType unite call s:unite_my_settings()
augroup END
function! s:unite_my_settings()
	"ESCでuniteを終了
	nmap <buffer> <ESC> <Plug>(unite_exit)
	"入力モードのときjjでノーマルモードに移動
	imap <buffer> jj <Plug>(unite_insert_leave)
	"入力モードのときctrl+wでバックスラッシュも削除
	imap <buffer> <C-w> <Plug>(unite_delete_backward_path)
	"sでsplit
	nnoremap <silent><buffer><expr> s unite#smart_map('s', unite#do_action('split'))
	inoremap <silent><buffer><expr> s unite#smart_map('s', unite#do_action('split'))
	"vでvsplit
	nnoremap <silent><buffer><expr> v unite#smart_map('v', unite#do_action('vsplit'))
	inoremap <silent><buffer><expr> v unite#smart_map('v', unite#do_action('vsplit'))
	"fでvimfiler
	nnoremap <silent><buffer><expr> f unite#smart_map('f', unite#do_action('vimfiler'))
	inoremap <silent><buffer><expr> f unite#smart_map('f', unite#do_action('vimfiler'))
endfunction

" vimfiler
"data_directory はramdiskを指定
" if has('win32')
" 	let g:vimfiler_data_directory = 'R:\.vimfiler'
" elseif  has('macunix')
" 	let g:vimfiler_data_directory = '/Volumes/RamDisk/.vimfiler'
" else
" 	let g:vimfiler_data_directory = '/mnt/ramdisk/.vimfiler'
" endif

"vimデフォルトのエクスプローラをvimfilerで置き換える
let g:vimfiler_as_default_explorer = 1
"セーフモードを無効にした状態で起動する
let g:vimfiler_safe_mode_by_default = 0
"現在開いているバッファのディレクトリを開く
nnoremap <silent> <Leader>fe :<C-u>VimFilerBufferDir -quit<CR>
"現在開いているバッファをIDE風に開く
nnoremap <silent> <Leader>fi :<C-u>VimFilerBufferDir -split -simple -winwidth=35 -no-quit<CR>

"デフォルトのキーマッピングを変更
augroup vimrc
	autocmd FileType vimfiler call s:vimfiler_my_settings()
augroup END
function! s:vimfiler_my_settings()
	nmap <buffer> q <Plug>(vimfiler_exit)
	nmap <buffer> Q <Plug>(vimfiler_hide)
endfunction

" im_control.vim
" 「日本語入力固定モード」のvi協調モードを無効化
" let IM_vi_CooperativeMode = 0
" " 挿入モード終了時にIME状態を保存しない
" inoremap <silent> <ESC> <ESC>:IMCtrl('Off')<CR>
" inoremap <silent> <C-[> <ESC>:IMCtrl('Off')<CR>
