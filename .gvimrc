" confs
syntax on
set background=dark
" let g:solarized_termcolors=256
colorscheme desert 
set showmatch
set showmode
" set autoindent
set tags=tags
set shiftwidth=4
set tabstop=2
set noexpandtab
set ambiwidth=double
let loaded_matchparen=1
set backspace=indent,eol,start
set hlsearch
set fdm=marker
set number
set history=200
set laststatus=2
set statusline=%<%f\ %m%r%h%w%{'['.(&fenc!=''?&fenc:&enc).']['.&ff.']'}%=%l,%c%V%8P

let g:save_window_file = expand('~/.vimwinpos')
augroup SaveWindow
		autocmd!
		autocmd VimLeavePre * call s:save_window()
		function! s:save_window()
				let options = [
										\ 'set columns=' . &columns,
										\ 'set lines=' . &lines,
										\ 'winpos ' . getwinposx() . ' ' . getwinposy(),
										\ ]
				call writefile(options, g:save_window_file)
		endfunction
augroup END

if filereadable(g:save_window_file)
		execute 'source' g:save_window_file
endif
