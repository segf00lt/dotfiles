colorscheme vim
syntax on 
set completeopt-=preview
set background=dark
set termguicolors
set number
set hlsearch
set incsearch
set wildmode=longest,list,full
set autoindent
set autoread
set expandtab
set tabstop=4
set shiftwidth=4
set path+=/usr/local/include
set loadplugins
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
filetype plugin on
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType py setl ofu=python3complete#Complete
au FileType css setl ofu=csscomplete#CompleteCSS
au FileType c setl ofu=ccomplete#Complete
au BufRead,BufNewFile *.md setl spell

"autocmd Filetype go set makeprg=go\ build

let mapleader = "\<Tab>"
nnoremap <leader>h :noh<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>b :b<Space>
nnoremap <leader>l :ls<CR>
let mapleader = "\\"
nnoremap <leader>h :noh<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>b :b<Space>
nnoremap <leader>l :ls<CR>
let mapleader = ","
nnoremap <leader>h :noh<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>b :b<Space>
nnoremap <leader>l :ls<CR>
inoremap jj <Esc>

"nnoremap tj  gt
"nnoremap tk  gT
"nnoremap tn :tabnew 
"nnoremap tJ :tabm +1<CR>
"nnoremap tK :tabm -1<CR>

" TODO: would be cool to have a scroll mode to make it easier
" to scroll around pages
"
