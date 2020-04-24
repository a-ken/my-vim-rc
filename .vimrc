call plug#begin('~/.vim/plugged')

Plug 'dracula/vim', { 'as': 'dr:acula' }
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
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
" Plug 'valloric/youcompleteme'
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
call plug#end()

syntax on
color dracula
set nocompatible
set encoding=utf-8
set bs=2
set ruler
set t_Co=256
set ls=2
set nu
set splitbelow
set splitright
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4
" set relativenumber
set incsearch
set showcmd
set showmatch
set rtp+=/usr/local/opt/fzf
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

" Powerline
" set laststatus=2
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#whitespace#mixed_indent_algo = 1
let g:airline_theme = 'papercolor'

if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.crypt = '🔒'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.maxlinenr = '☰'
let g:airline_symbols.maxlinenr = ''
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.spell = 'Ꞩ'
let g:airline_symbols.notexists = '∄'
let g:airline_symbols.whitespace = 'Ξ'

" powerline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''
