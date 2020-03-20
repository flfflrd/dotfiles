"        _                    
" __   _(_)_ __ ___  _ __ ___ 
" \ \ / / | '_ ` _ \| '__/ __|
"  \ V /| | | | | | | | | (__ 
" (_)_/ |_|_| |_| |_|_|  \___|
"                             

" BASIC
syntax on
set number relativenumber
set tabstop=4
let colortheme = "ron.vim"
let mapleader = ","

" PLUGINS
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim

call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
"Plugin 'valloric/youcompleteme'
call vundle#end()

filetype plugin indent on

" MAPS
autocmd FileType java nnoremap <F9> :exec '!javac' shellescape(expand('%')) '; java' shellescape('%:r')<cr>
"compile and run java program
autocmd FileType cpp nnoremap <F9> :exec '!sudo make install'<cr>
"compile c program
nnoremap <leader>sv :source $MYVIMRC<cr>
"update to new vimrc config
nnoremap <leader>ev :split $MYVIMRC<cr>
"edit vimrc in new vsplit
noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
"disable arrow keys

" ABBREVS - Java
autocmd FileType java iabbrev sop System.out.printf(
autocmd FileType java iabbrev psv public static void main(String[] args)
