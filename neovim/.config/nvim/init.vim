syntax on
set nu
set clipboard+=unnamedplus
set termguicolors

call plug#begin()
Plug 'ctrlpvim/ctrlp.vim'
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

let g:ctrlp_custom_ignore='\v[\/]\.(git|hg|svn)$'
let g:ctrlp_max_files=0
let g:ctrlp_user_command = ['.git', 'cd %s && git ls-files . --cached --exclude-standard']



filetype plugin indent on
set expandtab
set tabstop=2
set softtabstop=2
set shiftwidth=2

colorscheme onedark
