"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plungins
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" Syntax
Plug 'klen/python-mode'
Plug 'pangloss/vim-javascript'
Plug 'scrooloose/syntastic'
Plug 'sheerun/vim-polyglot'
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
set list
set listchars=eol:¬,tab:›\ ,trail:·,extends:»,precedes:«,space:·

" Linebreak on 500 characters
set lbr
set tw=500

" Folding
set foldmethod=indent   
set foldnestmax=10
set nofoldenable
set foldlevel=2

set ai " Auto indent
"set si " Smart indent


""""""""""""""""""""""""""""""
" => Plugin Specific 
""""""""""""""""""""""""""""""
" Raimondi/delimitMate Settings
let delimitMate_expand_cr = 1
augroup mydelimitMate
  au!
  au FileType markdown let b:delimitMate_nesting_quotes = ["`"]
  au FileType tex let b:delimitMate_quotes = ""
  au FileType tex let b:delimitMate_matchpairs = "(:),[:],{:},`:'"
  au FileType python let b:delimitMate_nesting_quotes = ['"', "'"]
augroup END

" Airline Settings
let g:airline#extensions#line#left_sep = ' '
let g:airline#extensions#line#left_alt_sep = '|'
"let g:airline_powerline_fonts = 1
let g:airline_tgheme='gruvbox'

let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
  if g:airline_theme == 'gruvbox'
    for colors in values(a:palette.inactive)
      let colors[3] = 245
    endfor
  endif
endfunction

" Deoplete autocomplete
let g:deoplete#enable_at_startup = 1

" Emmet related
let g:user_emmet_install_global = 1
let g:user_emmet_leader_key='<C-Z>'

"Angular related
let g:used_javascript_libs = 'angularUI,angularuirouter'


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

"Better CR
inoremap <C-CR> <CR><CR><Up><Tab>

" Split the pannel into three, with two terminals at the bottom, for angular
nnoremap <C-s> :8sp<CR>:set norelativenumber<CR>:set nonumber<CR>:vsp<CR>:set norelativenumber<CR>:set nonumber<CR>:te<CR><C-S-W>h:te<CR><C-S-W>k

" search term under cursor in all files
map <F4> :execute "vimgrep /" . expand("<cword>") . "/j **" <Bar> cw<CR>

