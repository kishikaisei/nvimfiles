""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plungins
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()

" Aesthetics
Plug 'rafi/awesome-vim-colorschemes'                              " Colorscheme pack
Plug 'ryanoasis/vim-devicons'                                     " Extra fancy icons
Plug 'luochen1990/rainbow'                                        " Brackets colorcoding
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }         " Show the actual colours of colourcodes 
Plug 'Yggdroot/indentLine'                                        " Added ident level seperator

" Syntax
Plug 'valloric/youcompleteme'                                     " Syntax completion
Plug 'calviken/vim-gdscript3'                                     " Add syntaxing for GDscript
Plug 'sheerun/vim-polyglot'                                       " Syntaxing for everything else
Plug 'OmniSharp/omnisharp-vim'                                    " Csharp
Plug 'git@gitlab.bisimulations.com:neil.messelmani/bisim-sqf.git' " BISIM sqf syntax

" Tools
Plug 'scrooloose/nerdtree'                                        " Side panel file explorer
Plug 'itchyny/lightline.vim'                                      " Sexier status line
Plug 'tpope/vim-surround'                                         " Auto closing of surrounding items
Plug 'mhinz/vim-startify'                                         " Start-up screen for vim

call plug#end()


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Settings
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set nocompatible            " Not compatible with vi
set autoread                " Reload file on change
filetype plugin on          " Related to plugins and local vs global settings
set so=15                   " Set 7 lines to the cursor
set splitbelow splitright   " Intutive Split
set wildmenu                " Turn on the WiLd menu
set wildignore=*.o,*~,*.pyc " Ignore compiled files
set cmdheight=1             " Height of the command bar
set hid                     " A buffer becomes hidden when it is abandoned
set ignorecase              " Ignore case when searching
set smartcase               " When searching try to be smart about cases
set hlsearch                " Highlight search results
set incsearch               " Makes search act like search in modern browsers
set tabstop=2               " Set tab width to 2 spaces
set ai                      " Auto indent
set laststatus=2
set t_Co=256

" folding
set foldmethod=indent
set foldcolumn=4
set foldnestmax=10
set nofoldenable
set foldlevel=2

"Always show current position
set ruler
set relativenumber
set number
set cul

" No annoying sound on errors
set noerrorbells
set novisualbell
set tm=500

" Turn backup off
set nobackup
set nowb
set noswapfile
set noequalalways

" Miscelaneous
set clipboard+=unnamedplus   " Same clipboard as OS
set wrap                     " Wrap lines
set mouse=a                  " Enables mouse
set laststatus=2             " Always show the status line

let g:python3_host_prog = 'C:\Users\neil.messelmani\AppData\Local\Programs\Python\Python38-32\python.exe'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Colors and Fonts
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" show empty characters
set list
set listchars=eol:¬,tab:›\ ,trail:·,extends:»,precedes:«,space:· " Show invisible characters
syntax enable                " Enable syntax highlighting
set encoding=utf8            " Set utf8 as standard encoding
set ffs=unix,dos,mac         " Use Unix as the standard file type
set termguicolors
if !has('gui_running')
	set t_Co=256
endif
set noshowmode

" Set default colorscheme
colorscheme gruvbox 
set background=dark
set guifont=SauceCodePro\ NF:10
let g:gruvbox_contrast_dark='soft'
let g:gruvbox_contrast_light='hard'


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Plugin Specific 
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Settings 
" autocmd VimEnter * NERDTree
autocmd VimEnter * wincmd p

function! s:CloseIfOnlyControlWinLeft()
	if winnr("$") != 1
		return
	endif
	if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
		\ || &buftype == 'quickfix'
		q
	endif
endfunction
augroup CloseIfOnlyControlWinLeft
	au!
	au BufEnter * call s:CloseIfOnlyControlWinLeft()
augroup END

" Deoplete enabler
let g:deoplete#enable_at_startup = 1

" Rainbow parentheses enabler
let g:rainbow_active = 1

" Hexokinase, show coded colours
" TODO: make this work?
let g:Hexokinase_v2 = 1
let g:Hexokinase_highlighters = ['virtual']
let g:Hexokinase_signIcon = '■'
let g:Hexokinase_ftAutoload = ['*']
let g:Hexokinase_refreshEvents = ['BufWritePost']
let g:Hexokinase_optInPatterns = 'full_hex,rgb,rgba,hsl,hsla,colour_names'
"let g:Hexokinase_executable_path = 'C:\Users\neil.messelmani\AppData\Local\nvim\plugged\vim-hexokinase\hexokinase\hexokinase.exe'

" Identline settings
" TODO: debug this plugin
let g:indentLine_enabled = 1
let g:indentLine_char = '┊'

" Lightline settings
let g:lightline = {
	\ 'colorscheme': 'gruvbox',
	\ }

" Startify bookmarks
let g:startify_bookmarks = [
		\ { 'v': 'c:/Users/neil.messelmani/AppData/Local/nvim/init.vim' },
		\ { 'p': 'z:/M/Projects/Godot/'},
		\ { 'g': 'z:/P/git'},
		\ ]

" OmniSharp use stdio server
let g:OmniSharp_server_stdio = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" => mapping
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Toggle NERDTree
map <F2> :NERDTreeToggle <CR>
map <C-o> :NERDTreeToggle <CR>

" Remap panel navigation
map <C-h> <C-S-W>h
map <C-j> <C-S-W>j
map <C-k> <C-S-W>k
map <C-l> <C-S-W>l

" Intuative navigation in wrapped lines
noremap <silent> k gk
noremap <silent> j gj
noremap <silent> 0 g0
noremap <silent> $ g$

inoremap <C-v> <C-R>*

" Resize tabs
nnoremap <C--> <C-w>-
nnoremap <C-=> <C-w>+
nnoremap <C-,> <C-w><
nnoremap <C-.> <C-w>>

" C+ENTER when between brackets for more modern CR
inoremap <C-CR> <CR><CR><Up><Tab>

" Esc to exit terminal mode
tnoremap <Esc> <C-\><C-n>

" Paste text to command line
cnoremap <C-v> <C-r>"

" Move lines
xnoremap K :move '<-2<CR>gv-gv
xnoremap J :move '>+1<CR>gv-gv

