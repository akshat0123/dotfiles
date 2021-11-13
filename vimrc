set exrc

set updatetime=100
set shiftwidth=4
set autoindent
set ignorecase
set tabstop=4
set expandtab
set nowrap
set number
set tw=80

filetype plugin indent on
syntax on

let mapleader = " " 
inoremap jj <ESC>
nmap <leader>w :w<cr>
nmap <leader>q :q<cr>
nmap <leader>f <c-f>
nmap <leader>b <c-b>
nmap <leader>d <c-d>
nmap <leader>u <c-u>
nmap <leader>h zH
nmap <leader>l zL
nmap <leader>v <c-w>v
nmap <leader>s <c-w>s
nmap <leader>L <c-w>l
nmap <leader>H <c-w>h
nmap <leader>J <c-w>j
nmap <leader>K <c-w>k
nmap <leader>Wl <c-w>L
nmap <leader>Wh <c-w>H
nmap <leader>Wj <c-w>J
nmap <leader>Wk <c-w>K
nnoremap <CR> :noh<CR><CR>
nmap <leader>n :NERDTree<cr>
nmap <leader>p :Files<cr>
nmap <leader>o :Ag<cr>

autocmd BufNewFile,BufRead *.py nmap <leader>r :w<CR>:!clear;python3 %<CR>
autocmd BufNewFile,BufRead *.tex nmap <leader>r :w<CR>:!clear;pdflatex %<CR>

set runtimepath+=[PATH TO VIM DIRECTORY]/nerdtree
set runtimepath+=[PATH TO VIM DIRECTORY]/vim-surround
set runtimepath+=[PATH TO VIM DIRECTORY]/nerdcommenter
set runtimepath+=[PATH TO VIM DIRECTORY]/vim-gitgutter
set runtimepath+=[PATH TO VIM DIRECTORY]/vim-airline
set runtimepath+=[PATH TO FZF DIRECTORY]
set runtimepath+=[PATH TO VIM DIRECTORY]/fzf.vim
command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --exact'}), <bang>0)
