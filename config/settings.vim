" Change leader to space
nnoremap <SPACE> <Nop>
let mapleader = " "

" Generals
filetype plugin indent on																					" Related to plugins and local vs global settings
set autoread																											" Reload file on change
set autochdir																											" Automatically CD to file folder
set so=5																													" Set 7 lines to the cursor
set splitbelow splitright																					" Intutive Split
set wildmenu																											" Turn on the WiLd menu
set wildignore=*.o,*~,*.pyc																				" Ignore compiled files
set cmdheight=1																										" Height of the command bar
set hid																														" A buffer becomes hidden when it is abandoned
set ignorecase																										" Ignore case when searching
set smartcase																											" When searching try to be smart about cases
set hlsearch																											" Highlight search results
set incsearch																											" Makes search act like search in modern browsers
set tabstop=2																											" Set tab width to 2 spaces
set shiftwidth=2																									" Set tab width size
set ai																														" Auto indent
set laststatus=2																									" Line for command and one for messages
set t_Co=256
set lazyredraw																										" Better scrolling performance on large results
set updatetime=50																									" Better user experience?

set ruler																													" Show cursor position in the statusbar
set relativenumber																								" Show relative number to the current line
set number																												" Show current line number
set cul																														" Highlight current line

set noerrorbells																									" Remove terminal sounds: errors
set novisualbell																									" Remove terminal sounds: visual
set tm=250																												" Wait between mapped sequences to complete
set updatetime=100																								" Wait before writing to swap

" Turn backup off
set nobackup
set nowb
set noswapfile
set noequalalways

set clipboard+=unnamedplus																				" Same clipboard as OS
set nowrap																												" Wrap lines
set mouse=a																												" Enables mouse
set laststatus=2																									" Always show the status line

" Undo files
set undodir=$LOCALAPPDATA.'nvim\undotree'
set undofile

let g:python2_host_prog = 'C:\Program Files\Python27\python.exe'	" Python 2 Path
let g:python3_host_prog = 'C:\Program Files\Python38\python.exe'	" Python 3 Path

" => Colors and Fonts
set guifont=FiraCode\ NF:h10
if exists('g:neovide')
	set guifont=FiraCode\ NF:h13
end

set list
set listchars=eol:,tab:\ ,extends:ﲖ,precedes:ﲕ									" Show invisible characters
syntax enable																											" Enable syntax highlighting
set ffs=unix,dos,mac																							" Use Unix as the standard file type
set termguicolors
if !has('gui_running')
	set t_Co=256
endif
set noshowmode

" Set default colorscheme
" colorscheme gruvbox
colorscheme sierra
" let laserwavecolor="dark"
" colorscheme laserwave
set background=dark
let g:gruvbox_contrast_dark					= 'soft'
let g:gruvbox_contrast_light				= 'hard'
let g:gruvbox_invert_selection			= 0
let g:gruvbox_invert_indent_guides	= 1
let g:gruvbox_improved_strings			= 1
let g:gruvbox_improved_warnings			= 1
let g:gruvbox_invert_tabline				= 1

au BufRead,BufNewFile *.wsb set filetype=xml

" BISIM specific
au BufRead,BufNewFile *.vbsvrconf set filetype=json
au BufRead,BufNewFile *.vbsvrkb   set filetype=json

