syntax on
set nu
set clipboard+=unnamedplus

call plug#begin()
Plug 'kien/ctrlp.vim'
Plug 'vim-syntastic/syntastic'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
call plug#end()


# Install pip3 (sudo apt-get install python3-pip)
# pip3 install flake8
let g:syntastic_python_checkers=['flake8']
let g:ctrlp_show_hidden = 1
