"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plungins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" Syntax
Plug 'klen/python-mode'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'burnettk/vim-angular'
Plug 'vim-scripts/matchit.zip'
Plug 'quramy/tsuquyomi'

" Tools
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'tpope/vim-fugitive'
Plug 'kien/ctrlp.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'godlygeek/tabular'

" Autocomplete
Plug 'davidhalter/jedi'
Plug 'deoplete-plugins/deoplete-jedi'
Plug 'Shougo/deoplete-clangx'
Plug 'wokalski/autocomplete-flow'
Plug 'rudism/deoplete-tsuquyomi'

call plug#end()


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Configure backspace so it acts as it should act
set backspace=eol,start,indent
set whichwrap+=<,>,h,l
let mapleader=" "

set magic     " For regular expressions turn magic on
set showmatch " Show matching brackets when text indicator is over them
set mat=2     " How many tenths of a second to blink when matching brackets

" Tabs setup
set tabstop=4
set shiftwidth=4
set noexpandtab
"set softtabstop=4


""""""""""""""""""""""""""""""
" => mapping
""""""""""""""""""""""""""""""
" Visual mode pressing * or # searches for the current selection
vnoremap <silent> * :call VisualSelection('f')<CR>
vnoremap <silent> # :call VisualSelection('b')<CR>

" Remap folding
inoremap <F9> <C-O>za
nnoremap <F9> za
onoremap <F9> <C-C>za
vnoremap <F9> zf

inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<cr>"
imap <c-space> <Plug>(asyncomplete_force_refresh)

inoremap <C-v> <C-R>*
" tab navigation
nnoremap tn :tabnew<Space>
nnoremap tk :tabnext<CR>
nnoremap tj :tabprev<CR>
nnoremap th :tabfirst<CR>
nnoremap tl :tablast<CR>

" Split the pannel into three, with two terminals at the bottom, for angular
nnoremap <C-s> :8sp<CR>:set norelativenumber<CR>:set nonumber<CR>:vsp<CR>:set norelativenumber<CR>:set nonumber<CR>:te<CR><C-S-W>h:te<CR><C-S-W>k

" search term under cursor in all files
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

