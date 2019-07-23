set number

set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent
set autoindent
set cindent
set expandtab


set mouse=a
set clipboard=plus
syntax on


autocmd BufNewFile *.cc 0r ~/cpp_codes/template.cpp

map <F8> :!clear; g++ -std=c++17 -DLOCAL -Wall -Wshadow -Wextra -Wno-unused-result -O2 % -o %< <CR>
map <F5> :!clear; ./%< <CR>
