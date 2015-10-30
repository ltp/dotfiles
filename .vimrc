set nocompatible
syntax on
set lazyredraw
set tabstop=8
set softtabstop=8
set shiftwidth=8
set smarttab
set scrolloff=5
set history=200
set undolevels=200
set ttyfast
set incsearch
set ignorecase
set hlsearch
set showmatch
set laststatus=2
set nu
set nofoldenable
highlight CursorLine guifg=red guibg=background
set statusline=%F%m%r%h%w\ [FORMAT=%{&ff}]\ [TYPE=%Y]\ [ASCII=\%03.3b]\ [HEX=\%02.2B]\ [POS=%04l,%04v][%p%%]\ [LEN=%L]
