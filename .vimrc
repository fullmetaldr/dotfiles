execute pathogen#infect()
syntax on
set hlsearch

if &diff
	syntax off
endif

set cursorline
set noswapfile
set tabstop=4
"set shiftwidth=4
set expandtab

" move among buffers with CTRL
map <C-n> :bnext<CR>
map <C-p> :bprev<CR>
