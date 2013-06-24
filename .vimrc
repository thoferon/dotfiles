filetype off
call pathogen#runtime_append_all_bundles()

set nocompatible
syntax on
filetype on
filetype indent on
filetype plugin on
set shiftwidth=2
set tabstop=2
set smartindent
set expandtab
autocmd BufWritePre * :%s/\s\+$//e
colorscheme molokai

let g:vimclojure#HighlightBuiltins = 1
let g:vimclojure#ParenRainbow = 1

set isk-=.
set hls
set number
set cursorline

set wildignore+=*.o,*.hi

let g:slime_target = "tmux"
autocmd FileType haskell let b:dispatch = 'cabal-dev configure --enable-tests && cabal-dev build && dist/build/unit/unit'
autocmd FileType ruby let b:dispatch = 'be rspec %'
nmap <C-@> :Dispatch<CR>
