call plug#begin()

  " Aesthetics
  Plug 'rafi/awesome-vim-colorschemes'															" Colorscheme pack
  Plug 'gruvbox-community/gruvbox'																	" A still supported gruvbox
  Plug 'ryanoasis/vim-devicons'																			" Extra fancy icons
  Plug 'Yggdroot/indentLine'																				" Adds ident level seperator
  Plug 'TaDaa/vimade'																								" Darkens off focus panel
  " Plug 'rrethy/vim-hexokinase', { 'do': 'make hexokinase' }
  
  " Tools
  Plug 'airblade/vim-rooter'																				" Change CWD to the root of the VCS
  Plug 'vim-airline/vim-airline'																		" A flexible statusbar
  Plug 'vim-airline/vim-airline-themes'															" Themes for airline
  Plug 'tpope/vim-surround'																					" Auto closing of surrounding items
  Plug 'jiangmiao/auto-pairs'																				" Auto close pairs
  Plug 'alvan/vim-closetag'																					" Auto close HTML tags
  Plug 'mhinz/vim-startify'																					" Start-up screen for vim
  Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }								" Fuzzy file finder installation
  Plug 'junegunn/fzf.vim'																						" FZF wrapper
  Plug 'yjqpro/FlyGrep.vim'																					" Fuzzy ripgrep results
  Plug 'liuchengxu/vim-which-key'																		" Spacekey to see mappings
  Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }					" Open lazygit in a floating panel
  Plug 'voldikss/vim-floaterm'																			" Floating unpanled terminal
  " Plug 'brooth/far.vim'																							" Search and replace
  Plug 'simnalamburt/vim-mundo'																			" Visualise the undotree
  " Plug 'jceb/vim-orgmode'																						" Easy todo list
  
  Plug 'dkarter/bullets.vim'
  Plug 'junegunn/vim-journal'
  Plug 'RRethy/vim-illuminate'

  " Syntax
  Plug 'tpope/vim-sleuth'																						" Automatically set tabs params
  Plug 'neoclide/coc.nvim', {'branch': 'release'}										" Where a lot of magic happens
  Plug 'habamax/vim-godot'																					" Add syntaxing for GDscript
  Plug 'sheerun/vim-polyglot'																				" Syntaxing for everything else
  Plug 'git@gitlab.bisimulations.com:neil.messelmani/bisim-sqf.git'	" BISIM sqf syntax

call plug#end()

