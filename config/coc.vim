" let g:coc_node_path = 'C:\Program Files\nodejs\node.exe'
let g:coc_global_extensions=[
		\		'coc-marketplace',
		\		'coc-explorer',
		\		'coc-omnisharp',
		\		'coc-tsserver',
		\		'coc-json',
		\		'coc-html',
		\		'coc-css',
		\		'coc-angular',
		\		'coc-python',
		\		'coc-prettier',
		\		'coc-vimlsp',
		\		'coc-git',
		\ ]
let g:coc_explorer_global_presets = {
		\   'floating': {
		\     'position': 'floating',
		\     'open-action-strategy': 'sourceWindow',
		\   }
		\ }

" CoC-Explorer
autocmd BufEnter * if (winnr("$") == 1 && &filetype == 'coc-explorer') | q | endif

