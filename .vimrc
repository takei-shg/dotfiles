" NeoBundle http://lambdalisue.hatenablog.com/entry/2013/06/23/071344
set nocompatible
filetype off

let s:noplugin = 0
let s:bundle_root = expand('~/.vim/bundle')
let s:neobundle_root = s:bundle_root . '/neobundle.vim'
let s:plugindev_root = expand('~/.vim/plugindev')
if !isdirectory(s:neobundle_root) || v:version < 702
  let s:noplugin = 1
else
    if has('vim_starting')
      execute "set runtimepath+=" . s:neobundle_root
      " execute "set runtimepath+=" . s:plugindev_root
    endif
    call neobundle#rc(s:bundle_root)

    NeoBundleFetch 'Shougo/neobundle.vim'

    NeoBundle "Shougo/vimproc", {
    \ "build": {
    \ "windows" : "make -f make_mingw32.mak",
    \ "cygwin" : "make -f make_cygwin.mak",
    \ "mac" : "make -f make_mac.mak",
    \ "unix" : "make -f make_unix.mak",
    \ }}

    NeoBundle 'Shougo/unite.vim'
    " NeoBundle 'Shougo/neocomplcache'
    
    " for files
    NeoBundle 'Shougo/vimshell'
    NeoBundle 'Shougo/vimfiler'
    " NeoBundle 'scrooloose/nerdtree'
    
    " for Syntastic
    "NeoBundle 'scrooloose/syntastic'
    
    " for Haskell
    " NeoBundle 'eagletmt/ghci-vim'
    " NeoBundle 'eagletmt/ghcmod-vim'
    " NeoBundle 'eagletmt/unite-haddock'
    " NeoBundle 'ujihisa/neco-ghc'
    " NeoBundle 'ujihisa/unite-haskellimport'
    
    " for Coq
    NeoBundle 'eagletmt/coqtop-vim'
    
    " for xml
    NeoBundle 'mattn/zencoding-vim'
    
    " for tmux status line
    NeoBundle 'Lokaltog/vim-powerline'
    NeoBundle 'altercation/vim-colors-solarized'
    " clipboard
    " NeoBundle 'kana/vim-fakeclip'
    
    " ctags
    " NeoBundle 'vim-scripts/taglist.vim'
    NeoBundle 'majutsushi/tagbar'
    
    " for erlang
    NeoBundle 'jimenezrick/vimerl'
 
    " for simplenote
    " NeoBundle "mrtazz/simplenote.vim"
    " NeoBundle 'https://github.com/kakkyz81/evervim.git'
    " NeoBundle "mattn/webapi-vim"
    " NeoBundle "takei-shg/unite-source-simplenote", "takei-shg"
    " NeoBundle "kana/vim-metarw"
    " NeoBundle "takei-shg/vim-metarw-simplenote", "takei-shg"

    " git
    NeoBundle "https://github.com/tpope/vim-fugitive.git"

    NeoBundle 'tpope/vim-surround'
    NeoBundle 'vim-scripts/Align'
    " NeoBundle 'vim-scripts/YankRing.vim'

    " NeoBundle 'https://github.com/sjl/gundo.vim.git'

    NeoBundle 'derekwyatt/vim-scala'
    " Check
    NeoBundleCheck
endif

" use .vimrc.local if it exists
let s:local_vimrc = expand('~/.vimrc.local')
if filereadable(s:local_vimrc)
    execute 'source ' . s:local_vimrc
endif


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

" nnoremap <C-n> :bn<CR>
" nnoremap <C-p> :bp<CR>
nnoremap <C-n> gt
nnoremap <C-p> gT
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
" unite
nnoremap [unite] <Nop>
nmap <Space>f [unite]

"インサートモードで開始しない
let g:unite_enable_start_insert = 0

" grep検索
nnoremap <silent> ,g  :<C-u>Unite grep:. -buffer-name=search-buffer<CR>

" カーソル位置の単語をgrep検索
nnoremap <silent> ,cg :<C-u>Unite grep:. -buffer-name=search-buffer<CR><C-R><C-W>

" grep検索結果の再呼出
nnoremap <silent> ,r  :<C-u>UniteResume search-buffer<CR>

" unite grep に ag(The Silver Searcher) を使う
if executable('ag')
  let g:unite_source_grep_command = 'ag'
  let g:unite_source_grep_default_opts = '--nogroup --nocolor --column'
  let g:unite_source_grep_recursive_opt = ''
endif

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
"Simplenote一覧
nnoremap <silent> [unite]s :<C-u>Unite simplenote<CR>
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
" Edit file by tabedit.
let g:vimfiler_edit_action = 'tabopen'
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
function! s:git_root_dir()
    if(system('git rev-parse --is-inside-work-tree') == "true\n")
        return ':VimFiler ' . system('git rev-parse --show-cdup') . '\<CR>'
    else
        echoerr '!!!current directory is outside git working tree!!!'
    endif
endfunction
nnoremap <expr><Leader>fg <SID>git_root_dir()
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


"----------------------------------------------------
"" vimplenote プラグイン
" mattn/vimplenote.vim
" "----------------------------------------------------
" username & password is in .vimrc.local
    " let g:VimpleNoteUsername = ""
    " let g:VimpleNotePassword = ""

    let g:metarw_simplenote_email = "takei.shg@gmail.com"
    let g:VimplenoteVertical=1
nnoremap <C-f>s :VimpleNote -n<CR>
nnoremap <C-f>l :VimpleNote -l<CR>

" evervim 設定
let g:evervim_devtoken='S=s29:U=31621d:E=148257b55b0:C=140cdca29b4:P=1cd:A=en-devtoken:V=2:H=ba897f0ce721c79e7bd98a38d0887235'

