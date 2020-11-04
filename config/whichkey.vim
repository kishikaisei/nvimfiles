" Leader Key Maps

" Map leader to which_key
nnoremap <silent> <leader> :silent <c-u> :silent WhichKey '<Space>'<CR>
vnoremap <silent> <leader> :silent <c-u> :silent WhichKeyVisual '<Space>'<CR>

" Create map to add keys to
let g:which_key_map =  {}
" Define a separator
" let g:which_key_sep = ''
" set timeoutlen=100

" Coc Search & refactor
nnoremap <leader>? :CocSearch <C-R>=expand("<cword>")<CR><CR>
let g:which_key_map['?'] = 'search word'

" Not a fan of floating windows for this
let g:which_key_use_floating_win = 0

" Change the colors if you want
highlight default link WhichKey          Operator
highlight default link WhichKeySeperator DiffAdded
highlight default link WhichKeyGroup     Identifier
highlight default link WhichKeyDesc      Function

" Hide status line
autocmd! FileType which_key
autocmd  FileType which_key set laststatus=0 noshowmode noruler
			\| autocmd BufLeave <buffer> set laststatus=2 noshowmode ruler


" Single mappings
" let g:which_key_map['/'] = [ ':call Comment()'                                             , 'Comment' ]
let g:which_key_map['.'] = [ ':e $MYVIMRC'                                                 , 'Open init' ]
let g:which_key_map['r'] = [ ':so $MYVIMRC'                                                , 'Source init' ]
let g:which_key_map[';'] = [ ':Commands'                                                   , 'Commands' ]
let g:which_key_map['e'] = [ ':CocCommand explorer --toggle --sources=buffer+,file+'       , 'Explorer' ]
" let g:which_key_map['f'] = [ ':Farr'                                                       , 'find and replace' ]
let g:which_key_map['s'] = [ '<C-W>s'                                                      , 'Split below']
let g:which_key_map['m'] = [ ':call WindowSwap#EasyWindowSwap()'                           , 'Move window' ]
let g:which_key_map['p'] = [ ':Files'                                                      , 'Search files' ]
let g:which_key_map['q'] = [ ':q'                                                          , 'Close' ]
let g:which_key_map['u'] = [ ':MundoToggle'                                                , 'Undo tree']
let g:which_key_map['v'] = [ '<C-W>v'                                                      , 'Split right']
" let g:which_key_map['z'] = [ 'Goyo'                                                        , 'Zen' ]

" => Group mappings
" " SPC is for miscelaneous
" let g:which_key_map['\<Space>'] {
" 			\ 'name' : '+Misc',
" 			\ '.' : [ ':e $MYVIMRC'                                                              , 'Open init.vim'],
" 			\ }

" a is for actions
let g:which_key_map.a = {
			\ 'name' : ' Actions' ,
			\ 'm' : [':MarkdownPreview'                                                          , 'Markdown preview'],
			\ 'M' : [':MarkdownPreviewStop'                                                      , 'Markdown preview stop'],
			\ 's' : [':let @/ = ""'                                                              , 'Remove search highlight'],
			\ 'w' : [':StripWhitespace'                                                          , 'Strip whitespace'],
			\ }
let g:which_key_map.a.t = {
			\ 'name' : ' Tabularize',
			\ ':' : [':Tabularize /:<CR>'                                                        , 'Allign :'],
			\ '|' : [':Tabularize /|<CR>'                                                        , 'Allign |'],
			\ ',' : [':Tabularize /,<CR>'                                                        , 'Allign ,'],
			\ '=' : [':Tabularize /=<CR>'                                                        , 'Allign ='],
			\ }

" b is for buffer
let g:which_key_map.b = {
			\ 'name' : ' Buffer' ,
			\ '1' : ['b1'                                                                        , 'Buffer 1'],
			\ '2' : ['b2'                                                                        , 'Buffer 2'],
			\ 'd' : [':Bdelete'                                                                  , 'Delete-buffer'],
			\ 'f' : ['bfirst'                                                                    , 'First-buffer'],
			\ 'h' : ['Startify'                                                                  , 'Home-buffer'],
			\ 'l' : ['blast'                                                                     , 'Last-buffer'],
			\ 'n' : ['bnext'                                                                     , 'Next-buffer'],
			\ 'p' : ['bprevious'                                                                 , 'Previous-buffer'],
			\ '?' : ['Buffers'                                                                   , 'FZF-buffer'],
			\ }

" f is for find and replace
let g:which_key_map.f = {
			\ 'name' : ' FaR' ,
			\ 'b' : [':Farr --source=vimgrep'                                                    , 'Buffer'],
			\ 'p' : [':Farr --source=rgnvim'                                                     , 'Project'],
			\ }

" g is for goto commands
let g:which_key_map.g = {
			\ 'name' : ' GoTo' ,
			\ 'd' : ['<Plug>(coc-definition)'                                                    , 'Definition'],
			\ 'r' : ['<Plug>(coc-references)'                                                    , 'Reference'],
			\ 'f' : ['gf'                                                                        , 'File']
			\ }

" k is for task
" let g:which_key_map.k = {
" 			\ 'name' : ' Task' ,
" 			\ 'c' : [':AsyncTask file-compile'                                                   , 'Compile file'],
" 			\ 'b' : [':AsyncTask project-build'                                                  , 'Build project'],
" 			\ 'e' : [':AsyncTaskEdit'                                                            , 'Edit local tasks'],
" 			\ 'f' : [':AsyncTaskFzf'                                                             , 'Find Sourcetask'],
" 			\ 'g' : [':AsyncTaskEdit!'                                                           , 'Edit globaSourcSourcSourceeel tasks'],
" 			\ 'h' : [':AsyncTaskList!'                                                           , 'List hidden tasks'],
" 			\ 'l' : [':CocList tasks'                                                            , 'List tasks'],
" 			\ 'm' : [':AsyncTaskMacro'                                                           , 'Macro help'],
" 			\ 'o' : [':copen'                                                                    , 'Open task view'],
" 			\ 'r' : [':AsyncTask file-run'                                                       , 'Run file'],
" 			\ 'p' : [':AsyncTask project-run'                                                    , 'Run project'],
" 			\ 'x' : [':cclose'                                                                   , 'Close task view'],
" 			\ }

" l is for language server protocol
let g:which_key_map.l = {
			\ 'name' : ' LSP' ,
			\ '.' : [':CocConfig'                                                                , 'Config'],
			\ ';' : ['<Plug>(coc-refactor)'                                                      , 'Refactor'],
			\ 'a' : ['<Plug>(coc-codeaction)'                                                    , 'Line action'],
			\ 'A' : ['<Plug>(coc-codeaction-selected)'                                           , 'Selected action'],
			\ 'b' : [':CocNext'                                                                  , 'Next action'],
			\ 'B' : [':CocPrev'                                                                  , 'Prev action'],
			\ 'c' : [':CocList commands'                                                         , 'Commands'],
			\ 'd' : ['<Plug>(coc-definition)'                                                    , 'Definition'],
			\ 'D' : ['<Plug>(coc-declaration)'                                                   , 'Declaration'],
			\ 'e' : [':CocList extensions'                                                       , 'Extensions'],
			\ 'f' : ['<Plug>(coc-format-selected)'                                               , 'Format selected'],
			\ 'F' : ['<Plug>(coc-format)'                                                        , 'Format'],
			\ 'h' : ['<Plug>(coc-float-hide)'                                                    , 'Hide'],
			\ 'i' : ['<Plug>(coc-implementation)'                                                , 'Implementation'],
			\ 'I' : [':CocList diagnostics'                                                      , 'Diagnostics'],
			\ 'j' : ['<Plug>(coc-float-jump)'                                                    , 'Float jump'],
			\ 'l' : ['<Plug>(coc-codelens-action)'                                               , 'Code lens'],
			\ 'n' : ['<Plug>(coc-diagnostic-next)'                                               , 'Next diagnostic'],
			\ 'N' : ['<Plug>(coc-diagnostic-next-error)'                                         , 'Next error'],
			\ 'o' : ['<Plug>(coc-openlink)'                                                      , 'Open link'],
			\ 'O' : [':CocList outline'                                                          , 'Outline'],
			\ 'p' : ['<Plug>(coc-diagnostic-prev)'                                               , 'Prev diagnostic'],
			\ 'P' : ['<Plug>(coc-diagnostic-prev-error)'                                         , 'Prev error'],
			\ 'q' : ['<Plug>(coc-fix-current)'                                                   , 'Quickfix'],
			\ 'r' : ['<Plug>(coc-rename)'                                                        , 'Rename'],
			\ 'R' : ['<Plug>(coc-references)'                                                    , 'References'],
			\ 's' : [':CocList -I symbols'                                                       , 'References'],
			\ 'S' : [':CocList snippets'                                                         , 'Snippets'],
			\ 't' : ['<Plug>(coc-type-definition)'                                               , 'Type definition'],
			\ 'u' : [':CocListResume'                                                            , 'Resume list'],
			\ 'U' : [':CocUpdate'                                                                , 'Update CoC'],
			\ 'v' : [':Vista!!'                                                                  , 'Tag viewer'],
			\ 'z' : [':CocDisable'                                                               , 'Disable CoC'],
			\ 'Z' : [':CocEnable'                                                                , 'Enable CoC'],
			\ }

" q is for quitting
let g:which_key_map.q = {
			\ 'name' : ' Quit' ,
			\ 'q' : [':qa!'                                                                      , 'Quit without saving' ],
			\ 'x' : [':q'                                                                        , 'Close current panel' ],
			\ 'w' : [':wq'                                                                       , 'Write and quit'],
			\ }

" s is for search
let g:which_key_map.s = {
			\ 'name' : ' Search' ,
			\ '/' : [':History/'                                                                 , 'History'],
			\ ';' : [':Commands'                                                                 , 'Commands'],
			\ 'a' : [':Ag'                                                                       , 'Text Ag'],
			\ 'b' : [':BLines'                                                                   , 'Current buffer'],
			\ 'B' : [':Buffers'                                                                  , 'Open buffers'],
			\ 'c' : [':Commits'                                                                  , 'Commits'],
			\ 'C' : [':BCommits'                                                                 , 'Buffer commits'],
			\ 'f' : [':Files'                                                                    , 'Files'],
			\ 'g' : [':GFiles'                                                                   , 'Git files'],
			\ 'G' : [':GFiles?'                                                                  , 'Modified git files'],
			\ 'h' : [':History'                                                                  , 'File history'],
			\ 'H' : [':History:'                                                                 , 'Command history'],
			\ 'l' : [':Lines'                                                                    , 'Lines'] ,
			\ 'm' : [':Marks'                                                                    , 'Marks'] ,
			\ 'M' : [':Maps'                                                                     , 'Normal maps'] ,
			\ 'p' : [':Helptags'                                                                 , 'Help tags'] ,
			\ 'P' : [':Tags'                                                                     , 'Project tags'],
			\ 's' : [':CocList snippets'                                                         , 'Snippets'],
			\ 'S' : [':Colors'                                                                   , 'Color schemes'],
			\ 't' : [':Rg'                                                                       , 'Text Rg'],
			\ 'T' : [':BTags'                                                                    , 'Buffer tags'],
			\ 'w' : [':Windows'                                                                  , 'Search windows'],
			\ 'y' : [':Filetypes'                                                                , 'File types'],
			\ 'z' : [':FZF'                                                                      , 'FZF'],
			\ }

let g:which_key_map.S = {
			\ 'name' : ' Session' ,
			\ 'c' : [':SClose'                                                                   , 'Close Session'],
			\ 'd' : [':SDelete'                                                                  , 'Delete Session'],
			\ 'l' : [':SLoad'                                                                    , 'Load Session'],
			\ 's' : [':Startify'                                                                 , 'Start Page'],
			\ 'S' : [':SSave'                                                                    , 'Save Session'],
			\ }

" t is for terminal
let g:which_key_map.t = {
			\ 'name' : ' Terminal' ,
			\ ';' : [':FloatermNew --wintype=normal --height=6'                                                         , 'Terminal'],
			\ 'f' : [':FloatermNew fzf'                                                                                 , 'FZF'],
			\ 'g' : [':FloatermNew --height=0.8 --width=0.8 lazygit'                                                    , 'Git'],
			\ 'l' : [':FloatermNew BisimContentGettext --angular --output src/app/i18n/resources/strings.pot --rewrite' , 'GetText'],
			\ 'n' : [':FloatermNew --height=0.8 --width=0.8'                                                            , 'New'],
			\ 'p' : [':FloatermNew python'                                                                              , 'Python'],
			\ 'q' : [':FloatermKill'                                                                                    , 'Killterm'],
			\ 's' : [':FloatermNew npm run convertStrings && npm-run-all --parallel convertStrings:onchange ngServe'    , 'NPM start'],
			\ 't' : [':FloatermToggle'                                                                                  , 'Toggle'],
			\ }

" w is for window
let g:which_key_map.w = {
			\ 'name' : ' Window' ,
			\ 'f' : [':let g:neovide_fullscreen=v:true'                                          , 'Fullscreen'],
			\ 'F' : [':let g:neovide_fullscreen=v:false'                                         , 'Unfullscreen'],
			\ 'c' : ['<Plug>(choosewin)'                                                         , 'Choose window'],
			\ '=' : ['<C-W>='                                                                    , 'Balance windows'],
			\ 'm' : ['<C-W>\|<C-W>_'                                                             , 'Maximise windows'],
			\ 'h' : ['<C-W>h'                                                                    , 'Move to left window' ],
			\ 'j' : ['<C-W>j'                                                                    , 'Move to below window' ],
			\ 'k' : ['<C-W>k'                                                                    , 'Move to above window' ],
			\ 'l' : ['<C-W>l'                                                                    , 'Move to right window' ],
			\ }

" Register which key map
call which_key#register('<Space>', "g:which_key_map")

