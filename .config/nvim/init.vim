syntax on 
set background=dark
set termguicolors
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
au FileType html,xhtml setl ofu=htmlcomplete#CompleteTags
au FileType py setl ofu=python3complete#Complete
au FileType css setl ofu=csscomplete#CompleteCSS
au BufRead,BufNewFile *.md setl spell
"au FileType c setl ofu=ccomplete#CompleteCpp
nnoremap tj  gt
nnoremap tk  gT
nnoremap tn :tabnew 
nnoremap tJ :tabm +1<CR>
nnoremap tK :tabm -1<CR>

inoremap jj <Esc>

" TODO: would be cool to have a scroll mode to make it easier
" to scroll around pages
