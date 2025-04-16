colorscheme vim
set loadplugins
syntax on 
set shada="NONE"
set completeopt-=preview
set background=dark
set linebreak
set termguicolors
set nonumber
set hlsearch
set incsearch
set wildmode=longest,list,full
set autoindent
set autoread
set noautochdir
set expandtab
set tabstop=2
set shiftwidth=2
set path+=/usr/local/include
set path+=/usr/include
"set list
"set listchars=multispace:\ ┊
"let g:go_fmt_autosave = 0
"highlight NonText guifg=#999999 ctermfg=242
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
filetype plugin on
"au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
"au FileType py setl ofu=python3complete#Complete
"au FileType css setl ofu=csscomplete#CompleteCSS
au FileType c setl ofu=ccomplete#Complete
au BufRead,BufNewFile *.md setl spell
au BufWritePre * syntax sync fromstart

"let g:netrw_keepdir=0
"let g:netrw_banner=0
"let g:netrw_liststyle=3

"autocmd Filetype go set makeprg=go\ build
autocmd Filetype c set makeprg=./nob

let mapleader = "`"
nnoremap <leader>h :noh<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>b :b<Space>
nnoremap <leader>l :ls<CR>
nnoremap <leader>m :wa<CR>:make<CR>
let mapleader = "\\"
nnoremap <leader>h :noh<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>b :b<Space>
nnoremap <leader>l :ls<CR>
nnoremap <leader>m :wa<CR>:make<CR>
let mapleader = ","
nnoremap <leader>h :noh<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>b :b<Space>
nnoremap <leader>l :ls<CR>
nnoremap <leader>m :wa<CR>:make<CR>

inoremap jj <Esc>
tnoremap jj <C-\><C-N>

nnoremap to  gt
nnoremap ti  gT
nnoremap tn :tabnew 
nnoremap tO :tabm +1<CR>
nnoremap tI :tabm -1<CR>

