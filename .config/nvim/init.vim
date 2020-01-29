execute pathogen#infect()
syntax on
set nu
set clipboard+=unnamedplusA

# Install pip3 (sudo apt-get install python3-pip)
# pip3 install flake8
let g:syntastic_python_checkers=['flake8']
