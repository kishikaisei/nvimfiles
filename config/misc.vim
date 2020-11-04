" => CommandlineComplete
cmap <c-p> <Plug>CmdlineCompleteBackward
cmap <c-n> <Plug>CmdlineCompleteForward

" => match it
let g:loaded_matchit = 1

" => windowswap
let g:windowswap_map_keys = 0

" => incsearch
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

" => Identline
" let g:indentLine_setColors = 0
let g:indentLine_char = ''
" let g:indent_blankline_extra_indent_level = -1
let g:indentLine_fileTypeExclude = [ 'startify', 'coc-explorer' ]

" => Startify
let g:startify_lists = [
					\ { 'type': 'sessions',  'header': ['   Sessions']                     },
					\ { 'type': 'files',     'header': ['   Recent files']                 },
					\ { 'type': 'bookmarks', 'header': ['   Bookmarks']                    },
					\ ]

let g:startify_bookmarks = [
					\ { '.': 'C:\Users\neil.messelmani\AppData\Local\nvim\init.vim' },
					\ { 'i': 'M:\Projects\Godot\ikaruga\README' },
					\ ]

" let g:startify_session_before_save = [
" 		\ 'silent! CocCommand explorer --no-toggle',
" 		\ 'silent! CocCommand explorer --toggle',
" 		\ ]

let g:startify_enable_special = 1
let g:startify_session_autoload = 1
let g:startify_session_delete_buffers = 1
let g:startify_change_to_vcs_root = 1
let g:startify_fortune_use_unicode = 1
let g:startify_session_persistence = 1

let g:webdevicons_enable_startify = 1

function! StartifyEntryFormat()
	return 'WebDevIconsGetFileTypeSymbol(absolute_path) ." ". entry_path'
endfunction

autocmd User Startified nmap <buffer> l <plug>(startify-open-buffers)
autocmd User Startified nmap <buffer> o <plug>(startify-open-buffers)

" => Lazygit
let g:lazygit_floating_window_winblend = 0 " transparency of floating window
let g:lazygit_floating_window_scaling_factor = 0.9 " scaling factor for floating window

" => Airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#tab_min_count = 2
let g:airline_left_sep  = ''
let g:airline_left_alt_sep  = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''

" => AnyFold
autocmd Filetype * AnyFoldActivate
let g:anyfold_fold_comments=1
set foldlevel=99
hi Folded term=NONE cterm=NONE

" => tagbar
let g:tagbar_ctags_bin='C:\tools\universal-ctags\ctags.exe'

" => Godot
func! GodotSettings() abort
  setlocal foldmethod=expr
  setlocal tabstop=4
  nnoremap <buffer> <F4> :GodotRunLast<CR>
  nnoremap <buffer> <F5> :GodotRun<CR>
  nnoremap <buffer> <F6> :GodotRunCurrent<CR>
  nnoremap <buffer> <F7> :GodotRunFZF<CR>
endfunc
augroup godot | au!
  au FileType gdscript call GodotSettings()
augroup end

" Colorizer
let g:colorizer_use_virtual_text = 1

" Sleuth
let g:sleuth_automatic = 1

" Wildfire
" nmap = <Plug>(wildfire-fuel)
" nmap - <Plug>(wildfire-water)

" goneovim
autocmd FileType markdown nnoremap <buffer> <C-p> :GonvimMarkdown<CR>
" Neovide
let g:neovide_cursor_animation_length=0.05

