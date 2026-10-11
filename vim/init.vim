set notermguicolors
colorscheme vim
set exrc

set updatetime=100
set shiftwidth=4
set autoindent
set ignorecase
set nohlsearch
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
nmap <leader>Wt :tabnew<CR>
nmap <leader>t gt
nmap <leader>T gT
nnoremap <CR> :noh<CR>
nmap <leader>n :NERDTree<cr>
nmap <leader>p :Files<cr>
nmap <leader>o :Ag<cr>

autocmd BufNewFile,BufRead *.py nmap <leader>r :w<CR>:tabnew \| term clear && python3 #<CR>
autocmd BufNewFile,BufRead *.tex nmap <leader>r :w<CR>:!clear; pdflatex %<CR>
autocmd FileType codecompanion setlocal nonumber

set runtimepath+=/home/ubuntu/.vim/nerdtree
set runtimepath+=/home/ubuntu/.vim/vim-surround
set runtimepath+=/home/ubuntu/.vim/nerdcommenter
set runtimepath+=/home/ubuntu/.vim/vim-gitgutter
set runtimepath+=/home/ubuntu/.vim/vim-airline
set runtimepath+=/home/ubuntu/.fzf
set runtimepath+=/home/ubuntu/.vim/fzf.vim

command! -bang -nargs=* Ag call fzf#vim#ag(<q-args>, fzf#vim#with_preview({'options': '--delimiter : --nth 4.. --exact'}), <bang>0)

set runtimepath+=/home/ubuntu/.vim/codecompanion.nvim
set runtimepath+=/home/ubuntu/.vim/plenary.nvim
set runtimepath+=/home/ubuntu/.vim/nvim-treesitter

" Local vLLM model
lua << EOF
-- require("codecompanion").setup({
--   adapters = {
--     http = {
--       vllm = function()
--         return require("codecompanion.adapters").extend("openai", {
--           name = "vllm",
--           url = "http://<<MODEL_URL>>:8000/v1/chat/completions",
--           env = { api_key = "vllm", },
--           schema = { model = { default = "Qwen/Qwen3-VL-4B-Instruct-FP8", }, },
--         })
--       end,
--     },
--   },
--   strategies = {
--     inline = { adapter = "vllm" },
--     agent = { adapter = "vllm" },
--     chat = { adapter = "vllm", },
--   },
--   display = {
--     chat = {
--       window = {
--         layout   = "vertical", -- Options: vertical, horizontal, float
--         position = "right",    -- Position window: "left", "right"
--         width    = 0.30,       -- 30% of the editor width
--       },
--     },
--   },
-- })
EOF

" --- Keybindings for CodeCompanion ---
nnoremap <leader>a :CodeCompanionChat Toggle<CR>
vnoremap <leader>a :CodeCompanionChat Add<CR><C-w>b

