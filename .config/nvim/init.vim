syntax on 
set background=dark
set termguicolors
set nocp
"set number relativenumber
set number
set hlsearch
set incsearch
set wildmode=longest,list,full
set autoindent
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <Tab><Tab> :noh<CR>
filetype plugin on
" show existing tab with 4 spaces width
"set tabstop=4
" when indenting with '>', use 4 spaces width
"set shiftwidth=4
" On pressing tab, insert 4 spaces
"set expandtab
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType py setl ofu=python3complete#Complete
au FileType css setl ofu=csscomplete#CompleteCSS
"au FileType php setl ofu=phpcomplete#CompletePHP
"au FileType ruby,eruby setl ofu=rubycomplete#Complete
"au FileType c setl ofu=ccomplete#CompleteCpp
nnoremap tj  gt
nnoremap tk  gT
nnoremap tn :tabnew 
nnoremap tJ :tabm +1<CR>
nnoremap tK :tabm -1<CR>
" make jj and zz do esc
inoremap jj <Esc>
vnoremap zz <Esc>
" make scrolls easier
nnoremap E <C-e>
nnoremap Y <C-y>
nnoremap D <C-d>
nmap U <Nop>
nnoremap U <C-u>
nnoremap F <C-f>
nnoremap B <C-b>

"nnoremap th  :tabfirst<CR>
"nnoremap tl  :tablast<CR>
"nnoremap tt  :tabedit<Space>
"nnoremap tn  :tabnext<Space>
"nnoremap tm  :tabm<Space>
"nnoremap td  :tabclose<CR>
" Alternatively use
"nnoremap th :tabnext<CR>
"nnoremap tl :tabprev<CR>
