" .vimrc  
set nocompatible              " be iMproved, required
filetype off                  " required

" Vundle
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'

" Plugin 'SirVer/ultisnips'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

Plugin 'christoomey/vim-tmux-navigator'

" Arduino
Plugin 'sudar/vim-arduino-syntax'

call vundle#end()            " required
filetype plugin indent on    " required


" VIM PLUG 
call plug#begin('~/.vim/plugged')

" FZF 
" https://github.com/junegunn/fzf.vim
Plug 'junegunn/fzf'
Plug '/usr/local/opt/fzf'

Plug 'rking/ag.vim'

Plug 'posva/vim-vue'
Plug 'pangloss/vim-javascript'

" Git Gutter
Plug 'airblade/vim-gitgutter'

" Ack
" Plug 'mileszs/ack.vim'

" let Vundle manage Vundle, required
Plug 'VundleVim/Vundle.vim'

" NerdTree plugin
Plug 'scrooloose/nerdtree'

Plug 'prettier/vim-prettier'

Plug 'kristijanhusak/vim-carbon-now-sh'

"Ale
Plug 'w0rp/ale'

"Airline
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"ELm Vim
Plug 'elmcast/elm-vim'

"TypeScript
Plug 'Shougo/vimproc.vim', {'do' : 'make'}
Plug 'leafgarland/typescript-vim'
Plug 'Quramy/tsuquyomi'

" Vim Commentary plugin
Plug 'tpope/vim-commentary'

" Vim Surround plugin
Plug 'tpope/vim-surround'

" Vim Repeat plugin
Plug 'tpope/vim-repeat'

" plugin on GitHub repo
Plug 'tpope/vim-fugitive'
" Plug 'christoomey/vim-conflicted'

" Autoclose bracket,paren,tag, etc 
Plug 'Raimondi/delimitMate'


"Solarized Colorscheme
Plug 'altercation/vim-colors-solarized'

"Install vimux
"Plugin benmills/vimux
Plug 'christoomey/vim-tmux-navigator'

call plug#end()


filetype plugin indent on    " required

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
" let g:solarized_termcolors = 256
colorscheme solarized

" relative numbering
set relativenumber
set number

"Map save to control + s
" inoremap <c-s> <Esc>:Update<CR>
" nnoremap <c-s> <Esc>:Update<CR>
inoremap <c-s> <Esc>:w!<CR>
nnoremap <c-s> <Esc>:w!<CR>

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

" UltiSnips 
"
" autocmd FileType javascript UltiSnipsAddFiletypes javascript-node
" let g:UltiSnipsSnippetDirectories=["UltiSnips"]
" let g:UltiSnipsExpandTrigger="<tab>"
" let g:UltiSnipsJumpForwardTrigger="<c-b>"
" let g:UltiSnipsJumpBackwardTrigger="<c-z>"
" let g:UltiSnipsEditSplit="horizontal"
" let g:UltiSnipsListSnippets='<leader>snip'



"Non Plugin Specific Key Mappings
nmap <leader>b ^
nmap <leader>e $

" Map FZF
map <leader>t :execute "FZF"<CR> 

" Maps for navigating tabs
map  ¬ :tabn<CR>
map  ˙ :tabp<CR>

" Quick edit vimrc
map <leader>rc :execute "tabnew " . $MYVIMRC<CR>
map <leader>rs :execute "source " . $MYVIMRC<CR>
" map <leader>rz :execute "source ~/.zshrc"<CR>
nnoremap <esc> :noh<return><esc>

" Paste helper
set pastetoggle=<F2>

" Place the swap files somewhere else!
set swapfile
set dir=~/tmp

set nofoldenable

" Remove Trailing Whitespace
autocmd BufWritePre *.js %s/\s\+$//e"

" Go to matching element by pressing % inside element
runtime macros/matchit.vim

autocmd BufNewFile,BufRead *.md set spell | set lbr | set nonu
let g:markdown_fenced_languages = ['html', 'json', 'css', 'javascript', 'elm', 'vim']


"Ale config
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
" let g:ale_fix_on_save = 1

" Allow airline to show ale errors
let g:airline#extensions#ale#enabled = 1

" Prettier Config
let g:prettier#exec_cmd_async = 1

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

let g:prettier#quickfix_enabled = 0

let g:prettier#config#single_quote = 'true'

let g:prettier#config#trailing_comma = 'es5'

let g:prettier#config#jsx_bracket_same_line = 'false'

map <leader>rs :execute "source " . $MYVIMRC<CR>
" map <leader>rz :execute "source ~/.zshrc"<CR>
nnoremap <esc> :noh<return><esc>

" Paste helper
set pastetoggle=<F2>

" Place the swap files somewhere else!
set swapfile
set dir=~/tmp

set nofoldenable

" Remove Trailing Whitespace
autocmd BufWritePre *.js %s/\s\+$//e"

" Go to matching element by pressing % inside element
runtime macros/matchit.vim

autocmd BufNewFile,BufRead *.md set spell | set lbr | set nonu
let g:markdown_fenced_languages = ['html', 'json', 'css', 'javascript', 'elm', 'vim']


"Ale config
let g:ale_linters = {
\   'javascript': ['eslint'],
\}

" Put this in vimrc or a plugin file of your own.
" After this is configured, :ALEFix will try and fix your JS code with ESLint.
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" Set this setting in vimrc if you want to fix files automatically on save.
" This is off by default.
" let g:ale_fix_on_save = 1

" Allow airline to show ale errors
let g:airline#extensions#ale#enabled = 1

" Prettier Config
let g:prettier#exec_cmd_async = 1

let g:prettier#autoformat = 0
autocmd BufWritePre *.js,*.jsx,*.mjs,*.ts,*.tsx,*.css,*.less,*.scss,*.json,*.graphql,*.md,*.vue PrettierAsync

let g:prettier#quickfix_enabled = 0

let g:prettier#config#single_quote = 'true'

let g:prettier#config#trailing_comma = 'es5'

let g:prettier#config#jsx_bracket_same_line = 'false'

"Silver Searcher
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif
let g:ackprg = 'ag --nogroup --nocolor --column'

" CarbonNowSh
map <leader>ss :CarbonNowSh<CR>

"Ag
let g:ag_working_path_mode="r"

" Set lower update time for Git Gutter
set updatetime=100

vnoremap <C-c> :w !pbcopy<CR><CR> noremap <C-v> :r !pbpaste<CR><CR>

nnoremap K :Ag! "\b<C-R><C-W>\b"<CR>:cw<CR>
