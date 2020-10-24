call plug#begin()

  " Aesthetics
  Plug 'rafi/awesome-vim-colorschemes'															" Colorscheme pack
  Plug 'fenetikm/falcon'
  Plug 'overcache/NeoSolarized'
  Plug 'embark-theme/vim', { 'as': 'embark' }												" Embark theme
  Plug 'ryanoasis/vim-devicons'																			" Extra fancy icons
  Plug 'Yggdroot/indentLine'																				" Adds ident level seperator
	Plug 'lukas-reineke/indent-blankline.nvim'
	Plug 'TaDaa/vimade'																								" Darkens off focus panel
  Plug 'tpope/vim-sleuth'																						" Automatically set tabs params
	Plug 'chrisbra/colorizer'
  
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
  " Plug 'yjqpro/FlyGrep.vim'																					" Fuzzy ripgrep results
  Plug 'wsdjeg/FlyGrep.vim'																					" Fuzzy ripgrep results
  Plug 'yegappan/grep'																							" *grep wrapper
  Plug 'liuchengxu/vim-which-key'																		" Spacekey to see mappings
  Plug 'kdheepak/lazygit.nvim', { 'branch': 'nvim-v0.4.3' }					" Open lazygit in a floating panel
  Plug 'voldikss/vim-floaterm'																			" Floating unpanled terminal
  " Plug 'brooth/far.vim'																							" Search and replace
  Plug 'simnalamburt/vim-mundo'																			" Visualise the undotree
  Plug 'majutsushi/tagbar'
  " Plug 'jceb/vim-orgmode'																						" Easy todo list
  Plug 'pseewald/vim-anyfold'																				" Folding helper
  Plug 'dkarter/bullets.vim'
  " Plug 'junegunn/vim-journal'
  Plug 'RRethy/vim-illuminate'
  Plug 'Shougo/defx.nvim', { 'do': ':UpdateRemotePlugins' }

  " Syntax
  Plug 'neoclide/coc.nvim', {'branch': 'release'}										" Where a lot of magic happens
  Plug 'sheerun/vim-polyglot'																				" Syntaxing for everything else
  Plug 'habamax/vim-godot'																					" Add syntaxing for GDscript
  Plug 'git@gitlab.bisimulations.com:neil.messelmani/bisim-sqf.git'	" BISIM sqf syntax

call plug#end()

