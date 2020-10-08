" Identline
let g:indentLine_char = ''
let g:indentLine_setColors = 1

" Startify
let g:startify_lists = [
					\ { 'type': 'dir',       'header': ['   Current Directory '. getcwd()] },
					\ { 'type': 'sessions',  'header': ['   Sessions']                     },
					\ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
					\ ]

let g:startify_bookmarks = [
						\ { '.': 'C:\Users\neil.messelmani\AppData\Local\nvim\init.vim' },
						\ { 'i': 'M:\Projects\Godot\ikaruga\README' },
						\ ]

let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
	return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

let g:startify_enable_special = 0

autocmd User Startified nmap <buffer> l <plug>(startify-open-buffers)
autocmd User Startified nmap <buffer> o <plug>(startify-open-buffers)

" Lazygit
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window

" Airline
let g:airline_powerline_fonts = 1

" Godot
" func! GodotSettings() abort
"   setlocal foldmethod=expr
"   setlocal tabstop=4
"   nnoremap <buffer> <F4> :GodotRunLast<CR>
"   nnoremap <buffer> <F5> :GodotRun<CR>
"   nnoremap <buffer> <F6> :GodotRunCurrent<CR>
"   nnoremap <buffer> <F7> :GodotRunFZF<CR>
" endfunc
" augroup godot | au!
"   au FileType gdscript call GodotSettings()
" augroup end

" goneovim
autocmd FileType markdown nnoremap <buffer> <C-p> :GonvimMarkdown<CR>

" Hexokinase
let g:Hexokinase_refreshEvents = ['InsertLeave']

let g:Hexokinase_optInPatterns = [
			\     'full_hex',
			\     'triple_hex',
			\     'rgb',
			\     'rgba',
			\     'hsl',
			\     'hsla',
			\     'colour_names'
			\ ]

let g:Hexokinase_virtualText = '■'
let g:Hexokinase_highlighters = [ 'virtual' ]

" Reenable hexokinase on enter
autocmd VimEnter * HexokinaseTurnOn

