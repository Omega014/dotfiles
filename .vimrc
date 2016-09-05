"NeoBundle Scripts-----------------------------
if &compatible
  set nocompatible               " Be iMproved
endif

" Required:
set runtimepath^=/Users/omega/.vim/bundle/neobundle.vim/

" Required:
call neobundle#begin(expand('/Users/omega/.vim/bundle'))

" Let NeoBundle manage NeoBundle
" Required:
NeoBundleFetch 'Shougo/neobundle.vim'

" Add or remove your Bundles here:
NeoBundle 'Shougo/neosnippet.vim'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'ctrlpvim/ctrlp.vim'
NeoBundle 'flazz/vim-colorschemes'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'mattn/emmet-vim'
" You can specify revision/branch/tag.
NeoBundle 'Shougo/vimshell', { 'rev' : '3787e5' }

" Required:
call neobundle#end()

" Required:
filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
NeoBundleCheck
"End NeoBundle Scripts-------------------------

nnoremap <silent><C-e> :NERDTreeToggle<CR>


filetype plugin on

set fenc=utf-8

" [Display]
set number
set autoindent
" Tab
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=4
set smarttab
set list
set listchars=tab:»-,trail:-,extends:»,precedes:«,nbsp:%
" 画面折り返し
set wrap
set showcmd
set laststatus=2
set statusline=[%F]%m
set statusline+=[%{has('multi_byte')&&\&fileencoding!=''?&fileencoding:&encoding}]
set statusline+=%y
set statusline+=%=
set statusline+=\ %l/%L(%P)


" [Highlight]
set term=xterm-256color
syntax on
highlight Normal ctermbg=black ctermfg=255
highlight StatusLine term=none cterm=none ctermfg=black ctermbg=grey
highlight CursorLine term=none cterm=none ctermfg=none ctermbg=darkgray
hi LineNr ctermbg=247 ctermfg=255
"hi CursorLineNr ctermbg=4 ctermfg=0
set cursorline
"nnoremap <silent> ,ha :HighlightCurrentLine Search<cr>
"nnoremap <silent> ,hb :HighlightCurrentLine DiffAdd<cr>
"nnoremap <silent> ,hc :HighlightCurrentLine Error<cr>
"command! -nargs=1 HighlightCurrentLine execute 'match <args> /<bslash>%'.line('.').'l/'
"nnoremap <silent> ,H :UnHighlightCurrentLine<cr>
"command! -nargs=0 UnHighlightCurrentLine match


" [Exec]
map mp :!pep8 %<cr>
map mf :!pyflakes %<cr>

" [Search]
set ignorecase
set smartcase


" [Edit]
"set virtualedit=all
set showmatch
set matchtime=3
set matchpairs& matchpairs+=<:>

function! ShebangExecute()
let m = matchlist(getline(1), '#!\(.*\)')
if(len(m) > 2)
execute '!'. m[1] . ' %'
else
execute '!' &ft ' %'
endif
endfunction
:nmap ,e :call ShebangExecute()<CR>

set clipboard=unnamed,autoselect

let g:syntastic_python_checkers = ["flake8"]


" [yankling]
let g:yankring_history_file='.yankling_history'

" [qbuf]
let g:qb_hotkey=';;'

" [bufferlist.vim]
:map <silent> <C-T> :call BufferList()<CR>

set nocompatible
filetype off

filetype indent on
autocmd FileType python setlocal completeopt-=preview

