set tabstop=4
set nu
set expandtab
set laststatus=2
set shiftwidth=4
set complete-=i
set cursorline
set wildmenu
execute pathogen#infect()
filetype plugin indent on
syntax on
map i <Up>
map j <Left>
map k <Down>
noremap h i
" ----- ctrlp.vim -----
let g:ctrlp_custom_ignore = '.*\.pyc$'
let g:ctrlp_max_files = 0
let g:ctrlp_user_command = 'ag %s -i --nocolor --nogroup --hidden
      \ --ignore .git
      \ --ignore .svn
      \ --ignore .hg
      \ --ignore .DS_Store
      \ --ignore "**/*.pyc"
      \ -g ""'
let g:ctrlp_lazy_update = 200
let g:ctrlp_clear_cache_on_exit = 0
if !has('python')
    echo 'In order to use pymatcher plugin, you need +python compiled vim'
else
    let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
endif

