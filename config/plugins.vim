call plug#begin()

	" => Aesthetics
	Plug 'rafi/awesome-vim-colorschemes'															" Colorscheme pack
	Plug 'fenetikm/falcon'																						" Falcon theme
	Plug 'overcache/NeoSolarized'																			" Solarized theme
	Plug 'embark-theme/vim', { 'as': 'embark' }												" Embark theme
	Plug 'NLKNguyen/papercolor-theme'																	" Papercolor theme
	Plug 'ryanoasis/vim-devicons'																			" Extra fancy icons
	Plug 'Yggdroot/indentLine'																				" Adds ident level seperator
	Plug 'lukas-reineke/indent-blankline.nvim'												" Convert indentline to vtext
	Plug 'TaDaa/vimade'																								" Darkens off focus panel
	Plug 'tpope/vim-sleuth'																						" Automatically set tabs params
	Plug 'chrisbra/colorizer'																					" Show colour codes
	Plug 'vim-airline/vim-airline-themes'															" Themes for airline
	
	" => Tools
	Plug 'airblade/vim-rooter'																				" Change CWD to the root of the VCS
	Plug 'vim-airline/vim-airline'																		" A flexible statusbar
	Plug 'tpope/vim-surround'																					" Auto closing of surrounding items
	Plug 'Raimondi/delimitMate'																				" Auto close pairs
	Plug 'andymass/vim-matchup'																				" Better % movement
	Plug 'alvan/vim-closetag'																					" Auto close HTML tags
	Plug 'mhinz/vim-startify'																					" Start-up screen for vim
	Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }								" Fuzzy file finder installation
	Plug 'junegunn/fzf.vim'																						" FZF wrapper
	Plug 'yegappan/grep'																							" *grep wrapper
	Plug 'rhysd/clever-f.vim'																					" Better f
	Plug 'wsdjeg/FlyGrep.vim'																					" Fuzzy ripgrep results
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
	Plug 'RRethy/vim-illuminate'																			" Highlight similar hovered text
	Plug 't9md/vim-choosewin'																					" Go to panel using a letter
	Plug 'wesQ3/vim-windowswap'																				" Move panels around
	Plug 'editorconfig/editorconfig-vim'															" Compatibility with editorconfig
	Plug 'rhysd/clever-f.vim'																					" Auto close pairs
	Plug 'gcmt/wildfire.vim'																					" Expand selections

	" => Syntax
	Plug 'neoclide/coc.nvim', {'branch': 'release'}										" Where a lot of magic happens
	Plug 'sheerun/vim-polyglot'																				" Syntaxing for everything else
	Plug 'habamax/vim-godot'																					" Add syntaxing for GDscript
	Plug 'git@gitlab.bisimulations.com:neil.messelmani/bisim-sqf.git'	" BISIM sqf syntax

call plug#end()

