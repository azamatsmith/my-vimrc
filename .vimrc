" .vimrc  
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Keep Plugin commands between vundle#begin/end.

" NerdTree plugin
Plugin 'scrooloose/nerdtree.git'

"Syntastic
Plugin 'vim-syntastic/syntastic'

"CtrlP
Plugin 'ctrlpvim/ctrlp.vim'

"ELm Vim
Plugin 'elmcast/elm-vim'

"TypeScript
Plugin 'Shougo/vimproc.vim', {'do' : 'make'}
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'

" Vim Commentary plugin
Plugin 'tpope/vim-commentary.git'

" Vim Surround plugin
Plugin 'tpope/vim-surround.git'

" Vim Prettier
Plugin 'prettier/vim-prettier'

" Vim Repeat plugin
Plugin 'tpope/vim-repeat'

" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'

" Autoclose bracket,paren,tag, etc 
Plugin 'Raimondi/delimitMate'

" Plugin for Snip Mate
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

"Solarized Colorscheme
Bundle 'altercation/vim-colors-solarized'

"Install vimux
"Plugin benmills/vimux
Plugin 'christoomey/vim-tmux-navigator'

" All of your Plugins must be added before the following line
call vundle#end()            " required

filetype plugin indent on    " required

" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" Plugin helper pathogen
"execute pathogen#infect()

" set tab stuff
set tabstop=2
set softtabstop=0 expandtab 
set shiftwidth=2
set smarttab

" set smartindent
set smartindent

" set leader to ,
let mapleader=","
 
" set hlsearch
set hlsearch

" Set paths for all ctrlp
" set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
" Set working path
let g:ctrlp_working_path_mode = 'r'

syntax enable
set background=dark
let g:solarized_termcolors = 256
colorscheme solarized

" relative numbering
set relativenumber
set number

"Map save to control + s
" inoremap <c-s> <Esc>:Update<CR>
" nnoremap <c-s> <Esc>:Update<CR>
inoremap <c-s> <Esc>:w!<CR>
nnoremap <c-s> <Esc>:w!<CR>
" map <leader>rc :execute "tabnew " . $MYVIMRC<CR>>

" disable those arrow keys bro
inoremap <Up> <NOP>
inoremap <Down> <NOP>
inoremap <Left> <NOP>
inoremap <Right> <NOP>
 
" Smoothscroll mappings
noremap <silent> <c-u> :call smooth_scroll#up(&scroll, 0, 2)<CR>
noremap <silent> <c-d> :call smooth_scroll#down(&scroll, 0, 2)<CR>
noremap <silent> <c-b> :call smooth_scroll#up(&scroll*2, 0, 4)<CR>
noremap <silent> <c-f> :call smooth_scroll#down(&scroll*2, 0, 4)<CR>

" Allow Edits in Nerdtree
set modifiable

" Splitting out of quotes in functions
" imap <C-j> <CR><Esc>O

" NERDTree
" nmap <C-n> :NERDTreeToggle<CR>
map <leader>nt :NERDTreeToggle<CR>
map <leader>nr :NERDTree<CR>
map <leader>nf :NERDTreeFind<CR>
map <leader>ntz :NERDTree Z:\<CR>
map <leader>ntk :NERDTree K:\<CR>
let NERDTreeShowHidden=1

"TMUX 
let g:tmux_navigator_no_mappings = 1
nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
" nnoremap <silent> <c-h> :TmuxNavigatePrevious<cr>
let g:tmux_navigator_save_on_switch = 1

" SnipMate
imap <tab> <Plug>snipMateNextOrTrigger
nmap <leader>snip :SnipMateOpenSnippetFiles<cr>

"Non Plugin Specific Key Mappings
nmap <leader>b ^
nmap <leader>e $
" Maps for navigating tabs
map  ¬ :tabn<CR>
map  ˙ :tabp<CR>

" Quick edit vimrc
map <leader>rc :execute "tabnew " . $MYVIMRC<CR>>
map <leader>rs :execute "source " . $MYVIMRC<CR>>
nnoremap <esc> :noh<return><esc>

" Paste helper
set pastetoggle=<F2>

" Place the swap files somewhere else!
set swapfile
set dir=~/tmp

set nofoldenable

"Syntastic settings
set statusline+=%#warningsmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*
" set statusline+=%{fugitive#statusline()}
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
" let g:syntastic_debug=3

" ESLINT
let g:syntastic_javascript_checkers = [ 'eslint' ]
" let g:syntastic_javascript_eslint_exe = 'yarn run lint --'
let g:syntastic_javascript_eslint_exe = 'eslint .'

"Ale
" let g:ale_lint_on_save = 1
  " let g:ale_lint_on_text_changed = 1

"Elm Setup
let g:polygot_disabled = ['elm']
let g:elm_detailed_complete = 1 
let g:elm_format_autosave = 1 
let g:elm_syntastic_show_warnings = 1 

"TS Settings
  let g:typescript_compiler_binary = 'tsc'
  let g:typescript_compiler_options = ''
" let g:tsuquyomi_disable_quickfix = 1
" let g:syntastic_typescript_checkers = ['tsuquyomi']
" let g:syntastic_typescript_checkers = ['tsc']
" autocmd QuickFixCmdPost [^l]* nested cwindow
" autocmd QuickFixCmdPost    l* nested cwindow
"
" Remove Trailing Whitespace
autocmd BufWritePre *.js %s/\s\+$//e"

" Go to matching element by pressing % inside element
runtime macros/matchit.vim

" Text width
au BufRead,BufNewFile *.js setlocal textwidth=80
highlight ColorColumn ctermbg=magenta
  call matchadd('ColorColumn', '\%>81v.\+', -1)
  set showbreak=↪

autocmd BufNewFile,BufRead *.md set spell | set lbr | set nonu
let g:markdown_fenced_languages = ['html', 'json', 'css', 'javascript', 'elm', 'vim']

" Prettier config
let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.json,*.css,*.scss,*.less,*.graphql PrettierAsync

" single quotes over double quotes
let g:prettier#config#single_quote = 'true'

" print spaces between brackets
let g:prettier#config#bracket_spacing = 'false'
