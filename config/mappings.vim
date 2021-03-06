" Clear highlight when new search
" nnoremap / :noh<CR>/

" Remap panel navigation
map <C-h> <C-S-W>h
map <C-j> <C-S-W>j
map <C-k> <C-S-W>k
map <C-l> <C-S-W>l

" Intuative navigation in wrapped lines
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 ^
noremap <silent> ^ 0
inoremap <C-v> <C-R>*

" Resize tabs
nnoremap <C--> <C-w>-
nnoremap <C-=> <C-w>+
nnoremap <C-,> <C-w><
nnoremap <C-.> <C-w>>

" Change tabs using tab
nnoremap <silent> <TAB> :bnext<CR>
nnoremap <silent> <S-TAB> :bprevious<CR>

"	C+ENTER when between brackets for more modern CR
inoremap <C-CR> <CR><CR><Up><Tab>

" Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Paste text to command line
cnoremap <C-v> <C-r>"

" Move lines
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv
" nnoremap J :m .+1<CR>==
" nnoremap K :m .-2<CR>==
" inoremap J <Esc>:m .+1<CR>==gi
" inoremap K <Esc>:m .-2<CR>==gi
" vnoremap J :m '>+1<CR>gv=gv
" vnoremap K :m '<-2<CR>gv=gv

" No yanking when deleting/changing
nnoremap d "_d
nnoremap c "_c
nnoremap x "_x

nnoremap yd d
nnoremap yc c

