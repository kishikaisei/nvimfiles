call plug#begin()

" Aesthetics
Plug 'rafi/awesome-vim-colorschemes'															" Colorscheme pack
Plug 'gruvbox-community/gruvbox'
Plug 'ryanoasis/vim-devicons'																			" Extra fancy icons
Plug 'Yggdroot/indentLine'																				" Added ident level seperator
Plug 'TaDaa/vimade'

" Plug 'ap/vim-css-color'
Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }

" Syntax
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'ervandew/supertab'
Plug 'habamax/vim-godot'																			" Add syntaxing for GDscript
Plug 'sheerun/vim-polyglot'																				" Syntaxing for everything else
" Plug 'OmniSharp/omnisharp-vim'																		" Csharp
Plug 'git@gitlab.bisimulations.com:neil.messelmani/bisim-sqf.git'	" BISIM sqf syntax
Plug 'tpope/vim-sleuth'																						" Automatically set tabs params

" Tools
" Plug 'itchyny/lightline.vim'																			" Sexier status line
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'tpope/vim-surround'																					" Auto closing of surrounding items
Plug 'jiangmiao/auto-pairs'																				" Auto close pairs
Plug 'alvan/vim-closetag'																					" Auto close HTML tags
Plug 'mhinz/vim-startify'																					" Start-up screen for vim
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'airblade/vim-rooter'
Plug 'liuchengxu/vim-which-key'
Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }
Plug 'voldikss/vim-floaterm'
Plug 'brooth/far.vim'																							" Search and replace
" Plug 'mbbill/undotree'																						" Undo tree instead of line
Plug 'simnalamburt/vim-mundo'

Plug 'dkarter/bullets.vim'
Plug 'junegunn/vim-journal'
Plug 'RRethy/vim-illuminate'

call plug#end()

