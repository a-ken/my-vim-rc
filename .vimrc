execute pathogen#infect()

call plug#begin('~/.vim/plugged')
Plug 'fatih/vim-go'
Plug 'scrooloose/nerdtree', {'on': 'NERDTreeToggle'}
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'scrooloose/nerdcommenter'
Plug 'fisadev/vim-ctrlp-cmdpalette'
Plug 'motemen/git-vim'
Plug 'kien/tabman.vim'
Plug 'junegunn/vim-github-dashboard', {'on': ['GHDashboard', 'GHActivity']}
Plug 'mileszs/ack.vim'
Plug 'isRuslan/vim-es6'
if has('python')
" YAPF formatter for Python
    Plug 'pignacio/vim-yapf-format'
endif
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'pangloss/vim-javascript'
Plug 'valloric/youcompleteme'
Plug 'othree/html5.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'moll/vim-node'
Plug 'tomasiser/vim-code-dark'
Plug 'majutsushi/tagbar'
Plug 'benmills/vimux'
Plug 'hzchirs/vim-material'
Plug 'ryanoasis/vim-devicons'
Plug 'jdkanani/vim-material-theme'
Plug 'gorodinskiy/vim-coloresque'
Plug 'nsf/gocode', {'rtp': 'vim/'}
call plug#end() 

syntax on
" no vi-compatible
set nocompatible
set encoding=utf-8

colorscheme codedark
let g:airline_theme = 'codedark'
filetype plugin on

set bs=2 " 在 insert 模式下用退後鍵刪除
set ruler
set t_Co=256
" always show status bar
set ls=2
set nu
set splitbelow
set splitright

set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

set backspace=indent,eol,start
set mouse=a
set clipboard=unnamed

let g:NERDTreeDirArrowExpandable = '▸'
let g:NERDTreeDirArrowCollapsible = '▾'
let g:nerdtree_tabs_open_on_console_startup=1
let NERDTreeShowLineNumbers=1
let NERDTreeAutoCenter=1
let NERDTreeShowBookmarks=1

let g:go_highlight_functions = 1
let g:go_highlight_methods = 2
let g:go_highlight_structs = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1

au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

autocmd FileType html setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType htmldjango setlocal shiftwidth=4 tabstop=4 softtabstop=4
autocmd FileType javascript setlocal shiftwidth=4 tabstop=4 softtabstop=4

let g:go_fmt_command = "goimports"
" enable powerline-fonts
let g:airline_powerline_fonts = 1
" enable tabline
let g:airline#extensions#tabline#enabled = 1
" set left separator
let g:airline#extensions#tabline#left_sep = ' '
" set left separator which are not editting
let g:airline#extensions#tabline#left_alt_sep = '|'
" show buffer number
let g:airline#extensions#tabline#buffer_nr_show = 1

map <C-n> :NERDTreeToggle<CR>
" tmux navigator
let g:tmux_navigator_no_mappings = 1
nnoremap <C-h> {Left-Mapping} :TmuxNavigateLeft<CR>
nnoremap <C-j> {Down-Mapping} :TmuxNavigateDown<CR>
nnoremap <C-k> {Up-Mapping} :TmuxNavigateUp<CR>
nnoremap <C-l> {Right-Mapping} :TmuxNavigateRight<CR>
nnoremap <C-\> {Previous-Mapping} :TmuxNavigatePrevious<CR>

map <F8> :TagbarToggle<CR>

let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ 'Ignored'   : '☒',
    \ "Unknown"   : "?"
    \ }

let g:javascript_plugin_flow = 1

let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }

" loading the plugin
" let g:webdevicons_enable = 1
" adding the flags to NERDTree 
" let g:webdevicons_enable_nerdtree = 1
" adding to vim-airline's tabline
" let g:webdevicons_enable_airline_tabline = 1
" adding to vim-airline's statusline
" let g:webdevicons_enable_airline_statusline = 1
" change the default character when no match found
" let g:WebDevIconsUnicodeDecorateFileNodesDefaultSymbol = 'ƛ'
