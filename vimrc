set number
set relativenumber

set shiftwidth=4
set tabstop=4
set softtabstop=4
set smartindent
set autoindent
set cindent
set expandtab
set autowrite
set autoread

set mouse=a
set clipboard=unnamedplus
syntax on

colorscheme badwolf


autocmd BufNewFile *.cc 0r ~/cpp_codes/template.cpp
autocmd filetype cpp map <C-d> <ESC> :2 <CR> :r ~/cpp_codes/debug.cpp <CR> :+28 <CR>
autocmd filetype cpp map <C-m> <ESC> :2 <CR> :r ~/cpp_codes/modops.cpp <CR> :+24 <CR>
autocmd filetype cpp map <F8> :!clear; g++ -std=c++17 -DLOCAL -Wall -Wshadow -Wextra -Wno-unused-result -O2 % -o %< <CR>
autocmd filetype cpp map <F5> :!clear; ./%< <CR>
autocmd filetype cpp map <C-c> ggVGy
autocmd filetype python map <F5> :!python3 % <CR>



set nocompatible              
filetype off                  
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'sjl/badwolf'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'tpope/vim-commentary'
Plugin 'SirVer/ultisnips'
call vundle#end()            
filetype plugin indent on    
