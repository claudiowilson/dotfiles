syntax on
set nu
set clipboard+=unnamedplus
set termguicolors

call plug#begin()
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
Plug 'LnL7/vim-nix'
Plug 'sheerun/vim-polyglot'
Plug 'joshdick/onedark.vim'
call plug#end()


" Install pip3 (sudo apt-get install python3-pip)
" pip3 install flake8
let g:syntastic_python_checkers=['flake8']

filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

colorscheme onedark
