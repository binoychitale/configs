set number
set autoindent
set tabstop=4
set shiftwidth=4
set nocompatible              " be iMproved, required
set guioptions -=m 
set guioptions -=T
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'rakr/vim-one'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
call vundle#end()            " required
filetype plugin indent on    " required
" key bindings
nnoremap <F2> :w<CR>
nnoremap <A-1> :NERDTree<CR>

" set editor settings
set guifont=Mono\ 12
" helper commands
:command -nargs=1 Ijsfunc :normal! i function <args>(){<CR><CR>}	
colorscheme one
set background=dark
" macro to comment n lines
normal qc@:normal 0i//<Esc>jq
function! Comment(line1, line2)
 echo "here"
 	let l1 = a:line1
	let l2 = a:line2
	execute l1.','.l2.'s/^/\/\/'
endfunction
:command! -nargs=+ Comm :call Comment(<f-args>)

function! Ucomment(line1, line2)
 echo "here"
 	let l1 = a:line1
	let l2 = a:line2
	execute l1.','.l2.'s/\/\//'
endfunction
:command! -nargs=+ Ucomm :call Ucomment(<f-args>)
