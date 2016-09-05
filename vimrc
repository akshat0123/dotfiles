"""""""""""""""""""""""""""""""
       " LOCAL VIMRC "
"""""""""""""""""""""""""""""""
if filereadable('.vimrc.local')
	so .vimrc.local 
endif

"""""""""""""""""""""""""""""""
        " GENERAL "
"""""""""""""""""""""""""""""""
set tw=230
set nowrap
set tabstop=4
set shiftwidth=4
set autoindent
set number
set ignorecase

let mapleader = " "
nmap <leader>n :NERDTree<cr>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
" Navigate text
nmap <leader>f <c-f>
nmap <leader>b <c-b>
nmap <leader>d <c-d>
nmap <leader>u <c-u>
nmap <leader>h zH 
nmap <leader>l zL 
" Navigate windows
nmap <leader>L <c-w>l
nmap <leader>H <c-w>h
nmap <leader>J <c-w>j
nmap <leader>K <c-w>k


"""""""""""""""""""""""""""""""
       " BEGIN VUNDLE "
"""""""""""""""""""""""""""""""
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Markdown'
Plugin 'nerdtree'
Plugin 'surround.vim'
Plugin 'mileszs/ack.vim'
Plugin 'jade.vim'
Plugin 'pig.vim'
Plugin 'Handlebars'

" All plugins must be added before the following line "
call vundle#end()
filetype plugin indent on
"""""""""""""""""""""""""""""""
        " END VUNDLE "
"""""""""""""""""""""""""""""""

"""""""""""""""""""""""""""""""
    " HANDLEBARS SYNTAX "
"""""""""""""""""""""""""""""""
" au BufRead,BufNewFile *.handlebars set syntax=handlebars

 
"""""""""""""""""""""""""""""""
       " PIG SYNTAX "
"""""""""""""""""""""""""""""""
" au BufRead,BufNewFile *.pig setf pig
