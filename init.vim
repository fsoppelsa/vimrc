set autochdir
set noswapfile
let guifont = 'DejaVu Sans Mono for Powerline:h20'
let g:python_host_skip_check = 1
let g:python3_host_skip_check = 1
let g:spacevim_enable_debug = 0
let g:spacevim_realtime_leader_guide = 1
let g:spacevim_colorscheme = "dracula"
"let g:spacevim_colorscheme_bg = "light"
let g:spacevim_filemanager = 'nerdtree'
let NERDTreeQuitOnOpen=1
let g:clamp_autostart = 0
call SpaceVim#layers#load('VersionControl')
call SpaceVim#layers#load('autocomplete')
call SpaceVim#layers#load('checkers')
call SpaceVim#layers#load('colorscheme')
call SpaceVim#layers#load('ctrlp')
"call SpaceVim#layers#load('debug')
call SpaceVim#layers#load('default')
call SpaceVim#layers#load('denite')
call SpaceVim#layers#load('fzf')
call SpaceVim#layers#load('git')
call SpaceVim#layers#load('github')
call SpaceVim#layers#load('incsearch')
call SpaceVim#layers#load('tags')
call SpaceVim#layers#load('lang#vim')
"call SpaceVim#layers#load('unite')
" The lang#go extension requires for deoplete-go
" go get -u github.com/nsf/gocode
" MacOS - brew install global --with-pygments --with-ctags
call SpaceVim#layers#load('lang#go')
" The lang#c extension requires for deoplete-clang2
" Linux - the `clang` package, clang-check command
" MacOS - brew install clang-format
" call SpaceVim#layers#load('lang#c')
" lang#python is the slowest loading on Mac
"call SpaceVim#layers#load('lang#python')
" Does not support resize?
call SpaceVim#layers#load('shell',
        \ {
        \ 'default_position' : 'bottom',
        \ 'default_height' : 8,
        \ }
        \ )
"call SpaceVim#layers#load('tools#screensaver')
let g:spacevim_custom_plugins = [
        \ ['sebdah/vim-delve'],
        \ ['christoomey/vim-tmux-navigator'],
        \ ]
let g:spacevim_enable_vimfiler_welcome = 1
let g:spacevim_enable_debug = 0
let g:deoplete#auto_complete_delay = 150
let g:spacevim_enable_tabline_filetype_icon = 1
let g:spacevim_enable_statusline_display_mode = 0
let g:spacevim_enable_os_fileformat_icon = 1
let g:spacevim_buffer_index_type = 1
let g:neomake_vim_enabled_makers = []
autocmd FileType go nmap <Leader>q :DlvAddBreakpoint <CR>
autocmd FileType go nmap <Leader>d :DlvDebug <CR>
if executable('vimlint')
    call add(g:neomake_vim_enabled_makers, 'vimlint') 
endif
if executable('vint')
    call add(g:neomake_vim_enabled_makers, 'vint') 
endif
if has('python3')
    let g:ctrlp_map = ''
    nnoremap <silent> <C-p> :Denite file_rec<CR>
endif
let g:clang2_placeholder_next = ''
let g:clang2_placeholder_prev = ''
nnoremap <leader>a :cclose<CR>

" Go
let g:go_list_type = "quickfix"
let g:go_test_timeout = '10s'
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
"let g:go_term_mode = "split"
let g:go_fmt_command = "goimports"
let g:syntastic_go_checkers = ['golint', 'govet', 'errcheck']
autocmd FileType go nmap <leader>b :<C-u>call <SID>build_go_files()<CR>
autocmd Filetype go command! -bang A call go#alternate#Switch(<bang>0, 'edit')
"call SpaceVim#layers#load('lang#elixir')
"call SpaceVim#layers#load('lang#haskell')
"call SpaceVim#layers#load('lang#java')
"call SpaceVim#layers#load('lang#javascript')
"call SpaceVim#layers#load('lang#lua')
"call SpaceVim#layers#load('lang#perl')
"call SpaceVim#layers#load('lang#php')
"call SpaceVim#layers#load('lang#rust')
"call SpaceVim#layers#load('lang#swig')
"call SpaceVim#layers#load('lang#tmux')
"call SpaceVim#layers#load('lang#xml')
