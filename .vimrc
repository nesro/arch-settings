set nu
set mouse=a
hi statusline guibg=green

set statusline+=%F
let g:airline_theme = "wombat"

set laststatus=2
syntax on
set so=50

set showcmd

set background=dark
colorscheme evening 

set cindent
set sw=8
set ts=8
set sts=8
set noexpandtab
set cinoptions=t0,(.5s,u0,:0,+.5s 

set colorcolumn=81
highlight ColorColumn ctermbg=darkred ctermfg=white guibg=white
highlight OverLength ctermbg=darkred ctermfg=white guibg=white
match OverLength /\%81v.\+/

" end of file
