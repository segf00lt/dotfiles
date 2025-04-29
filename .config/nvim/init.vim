colorscheme vim
set loadplugins
syntax on 
set shada="NONE"
set clipboard+=unnamedplus
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
"autocmd Filetype c set makeprg=./nob

let mapleader = "`"
nnoremap <leader>h :noh<CR>
nnoremap <leader>f :Ex<CR>
nnoremap <leader>F :tabnew .<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>b :b<Space>
nnoremap <leader>l :ls<CR>
nnoremap <leader>m :wa<CR>:make<CR>
nnoremap <leader>o  gt
nnoremap <leader>i  gT
nnoremap <leader>n :tabnew 
nnoremap <leader>O :tabm +1<CR>
nnoremap <leader>I :tabm -1<CR>

let mapleader = "\\"
nnoremap <leader>h :noh<CR>
nnoremap <leader>f :Ex<CR>
nnoremap <leader>F :tabnew .<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>b :b<Space>
nnoremap <leader>l :ls<CR>
nnoremap <leader>m :wa<CR>:make<CR>
nnoremap <leader>o  gt
nnoremap <leader>i  gT
nnoremap <leader>n :tabnew 
nnoremap <leader>O :tabm +1<CR>
nnoremap <leader>I :tabm -1<CR>

let mapleader = ","
nnoremap <leader>h :noh<CR>
nnoremap <leader>f :Ex<CR>
nnoremap <leader>F :tabnew .<CR>
nnoremap <leader>e :e<Space>
nnoremap <leader>b :b<Space>
nnoremap <leader>l :ls<CR>
nnoremap <leader>m :wa<CR>:make<CR>
nnoremap <leader>o  gt
nnoremap <leader>i  gT
nnoremap <leader>n :tabnew 
nnoremap <leader>O :tabm +1<CR>
nnoremap <leader>I :tabm -1<CR>


inoremap jj <Esc>
tnoremap jj <C-\><C-N>

set tagcase=ignore

function! SourceFileIfExists(filepath) abort
    try
        execute "source " . a:filepath
    catch
    endtry
endfunction

call SourceFileIfExists(".project.vim")

autocmd DirChanged * call SourceFileIfExists(".project.vim")

nnoremap <S-F11> :call SourceFileIfExists(".project.vim")<CR>
nnoremap <S-F12> :call SourceFileIfExists(".project.vim")<CR>:call SourceFileIfExists(".save.vim")<CR>
nnoremap <S-F2> :wa<CR>:mksession! .save.vim<CR>


"------------------------------------------------------------------------
" Global scratch‐buffer + jobstart() integration
" always opens a split BELOW current window
"------------------------------------------------------------------------

" tracking globals
let g:scratch_buf = -1
let g:scratch_job = -1

" Create (but don’t show) a nofile scratch buffer if missing
function! EnsureScratch() abort
  if g:scratch_buf != -1 && bufexists(g:scratch_buf)
    return
  endif
  " create a new empty buffer, don’t load a file
  let g:scratch_buf = bufadd('')
  call bufload(g:scratch_buf)
  " make it a hidden scratch buffer
  call setbufvar(g:scratch_buf, '&buftype',   'nofile')
  call setbufvar(g:scratch_buf, '&bufhidden', 'hide')
  call setbufvar(g:scratch_buf, '&swapfile',  0)
  call setbufvar(g:scratch_buf, '&buflisted', 0)
endfunction

" Open (or focus) the scratch buffer in a below-right split
function! OpenScratch() abort
  call EnsureScratch()
  " if already visible, jump there
  if bufwinnr(g:scratch_buf) != -1
    execute bufwinnr(g:scratch_buf) . 'wincmd w'
  else
    " split ~30% height under current window
    let l:height = float2nr(&lines * 0.3)
    execute 'belowright ' . l:height . 'split'
    execute 'buffer ' . g:scratch_buf
    " hide ^M via conceal
    setlocal conceallevel=3
    " define a buffer-local match for '\r' to the 'Conceal' group
    " (Conceal group by default draws nothing)
    call matchadd('Conceal', '\r', 10, -1, {'window': win_getid()})
  endif
endfunction

" Append job output lines into the scratch buffer
function! OnScratchStdout(jobid, data, event) abort
  if a:data ==# [''] | return | endif
  call setbufline(g:scratch_buf, '$', a:data)
endfunction

" Launch an async job, clear+open scratch, capture its stdout+stderr
function! StartScratchJob(cmd) abort
  call OpenScratch()
  if bufloaded(g:scratch_buf)
    call deletebufline(g:scratch_buf, 1, '$')
  endif
  let g:scratch_job = jobstart(a:cmd, {
        \ 'pty': v:true,
        \ 'stdout_buffered': v:false,
        \ 'stderr_buffered': v:false,
        \ 'on_stdout': function('OnScratchStdout'),
        \ 'on_stderr': function('OnScratchStdout'),
        \ })
endfunction

" Kill the running scratch job (if any)
function! KillScratchJob() abort
  if type(g:scratch_job) == type(0) && g:scratch_job > 0
    " this will send SIGTERM (and SIGKILL if the job ignores SIGTERM)
    call jobstop(g:scratch_job)
    let g:scratch_job = -1
  endif
endfunction

" Toggle the scratch split on/off
function! ToggleScratch() abort
  if bufwinnr(g:scratch_buf) != -1
    execute bufwinnr(g:scratch_buf) . 'close'
  else
    call OpenScratch()
  endif
endfunction

nnoremap <F1> :call ToggleScratch()<CR>

" if we are using neovide as our gui client
let neovide_scale_factor = 1.0
let neovide_position_animation_length = 0
let neovide_cursor_animation_length = 0.0
let neovide_cursor_trail_size = 0
let neovide_cursor_animate_in_insert_mode = 0
let neovide_cursor_animate_command_line = 0
let neovide_scroll_animation_far_lines = 0
let neovide_scroll_animation_length = 0.0

