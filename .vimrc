"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"""""""""""""" https://github.com/verzola/.vimrc """"""""""""""
""" released under the WTFPL v2 license, by Gustavo Verzola """
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle
set nocompatible                              " be iMproved, required
filetype off                                  " required
set rtp+=~/.vim/bundle/Vundle.vim             " set the runtime path to include Vundle and initialize
call vundle#begin()                           " initialize Vundle
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Plugins
Plugin 'VundleVim/Vundle.vim'                 " Vundle itself
Plugin 'cdmedia/itg_flat_vim'                 " Colorscheme
Plugin 'scrooloose/nerdtree'                  " Sidebar to browse files
Plugin 'scrooloose/nerdcommenter'             " Fast commenter
Plugin 'jistr/vim-nerdtree-tabs'              " Independent NERDTree
Plugin 'vim-airline/vim-airline'              " Status bar
Plugin 'vim-airline/vim-airline-themes'       " Status bar themes
Plugin 'tpope/vim-fugitive'                   " Integration with Git
Plugin 'tpope/vim-surround'                   " Surround
Plugin 'airblade/vim-gitgutter'               " Git Gutter
Plugin 'mattn/emmet-vim'                      " Emmet
Plugin 'ctrlpvim/ctrlp.vim'                   " CTRL+P (Goto file)
Plugin 'terryma/vim-multiple-cursors'         " Multiple cursors sublime like
Plugin 'ryanoasis/vim-devicons'               " DevIcons
Plugin 'tpope/vim-repeat'                     " Repeat plugin maps
Plugin 'StanAngeloff/php.vim'                 " PHP integration
Plugin 'easymotion/vim-easymotion'            " Fast move
Plugin 'kshenoy/vim-signature'
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Vundle
call vundle#end()                             " required
filetype plugin indent on                     " required
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Settings
colorscheme itg_flat                          " Colorscheme
syntax enable                                 " Colored syntax
set autoindent                                " Auto indent
set autoread                                  " Auto read if changes are detected
set autowrite                                 " Auto save when switch buffer
set backspace=indent,eol,start                " Fix backspace
set colorcolumn=80                            " Set column rule
set complete-=i                               " Disable complete from includes
set completeopt=longest,menuone               " Show popup with completions
set copyindent                                " Copy indentation from existing lines
set cursorline                                " Hightlight current line
set encoding=utf8
set expandtab                                 " On pressing tab, insert 4 spaces
set formatoptions=qrn1
set gdefault                                  " Defaults to global substitution
set guifont=Droid\ Sans\ Mono\ For\ Powerline\ 12  " Set gvim font
set guioptions-=L                             " Remove left-hand scroll bar
set guioptions-=T                             " Remove toolbar
set guioptions-=m                             " Remove menu bar
set guioptions-=r                             " Remove right-hand scroll bar
set hidden                                    " Hidden buffers
set history=1000                              " Size of command history
set hlsearch                                  " Highlight search
set ignorecase                                " Ignore case in search
set incsearch                                 " Highlight while searching
set laststatus=2                              " Always show status bar
set lazyredraw                                " Don't redraw while executing macros or registries
set list
set listchars=tab:▸\ ,trail:.,extends:#,nbsp:. " Replace trailling spaces with a character
set mouse=a                                   " Toggle mouse on
set mousehide                                 " Hide mouse when typing
set nobackup                                  " Disable backup file 
set noerrorbells                              " No bell sound
set noshowmode                                " Remove default statusbar
set noswapfile                                " Disable swap file
set nowrap                                    " Don't wrap lines
set nowritebackup                             " Disable backup file
set nrformats-=octal                          " ?
set number                                    " Show line numbers
set pastetoggle=<F12>                         " Shortcut for paste mode
set regexpengine=1                            " Regex in search
set ruler                                     " Show ruler
set shiftround                                " ?
set shiftwidth=4                              " when indenting with '>', use 4 spaces width
set showcmd                                   " Show commands being executed
set showmatch                                 " Show matching delimitator
set smartcase                                 " Intelligent case in search
set smarttab                                  " ?
set softtabstop=4
set splitbelow                                " Create horizontal split on the bottom
set splitright                                " Create vertical split on the right
set tabstop=4                                 " show existing tab with 4 spaces width
set textwidth=79
set timeout                                   " ?
set timeoutlen=500                            " Lower timeout length
set title                                     " Automatically set screen title
set ttimeout                                  " ?
set ttimeoutlen=100                           " Lower ttimeout length
set ttyfast                                   " ?
" create undo-dir if it does not exists
if !isdirectory($HOME."/.vim/undo-dir")
    call mkdir($HOME."/.vim/undo-dir", "", 0700)
endif
set undodir=~/.vim/undo-dir                   " Set undofiles folder
set undofile                                  " Create undo file to allow undo across exits
set undolevels=1000                           " Size of undo history
set virtualedit=onemore                       " Allow cursor to go to end of line
set wildmenu                                  " Autocomplete for commands
set wildmode=list:longest,full                " Autocomplete for commands
" never do this again --> :set paste <ctrl-v> :set no paste
let &t_EI .= "\<Esc>[?2004l"
let &t_SI .= "\<Esc>[?2004h"
let hlstate = 0                               " Disable hlsearch
let mapleader = ","                           " Redefines leader key
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" NERDTree
let NERDTreeDirArrows = 1                     " Simplify the directory tree arrows
let NERDTreeQuitOnOpen = 0                    " Autoclose when open file
let NERDTreeShowBookmarks = 1                 " Show bookmarks on NERDTree
let NERDTreeShowHidden = 1                    " Show hidden files on NERDTree
let NERDTreeShowLineNumbers = 1               " Show line numbers on NERDTree
let NERDTreeQuitOnOpen = 1                    " Quit NERDTree after open file
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Airline
let g:airline#extensions#tabline#enabled = 1  " Enable tabs
let g:airline_powerline_fonts = 1             " Powerline fonts on airline
let g:airline_theme = 'powerlineish'          " Airline theme
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" CTRLP
let g:ctrlp_cache_dir = $HOME.'/.cache/ctrlp' " Cache folder
let g:ctrlp_clear_cache_on_exit = 0           " Don't clear cache on exit
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_max_files = 0                     " Do not limit the number of searchable files
let g:ctrlp_max_height = 10                   " Maxiumum height of match window
let g:ctrlp_mruf_max = 450                    " Number of recently opened files
let g:ctrlp_switch_buffer = 'et'              " Jump to a file if it's open already
let g:ctrlp_use_caching = 1                   " Turn caching on
let g:ctrlp_working_path_mode = 'ra'
let g:ctrlp_show_hidden = 1
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Mappings
" Shortcut to open NERDTree
"map <C-e> :NERDTreeToggle<CR>
map <C-e> :NERDTreeMirrorToggle<CR>
" Find current file on NERDTree
noremap <leader>nf :NERDTreeFind<cr>
" Shortcut to write
nnoremap <leader>w :w<CR>
" Shortcut to quit
nnoremap <leader>q :q!<CR>
" Shortcut to write and quit
nnoremap <leader>x :x<CR>
" Shortcut to edit my .vimrc
nnoremap <leader>ev :tabedit $MYVIMRC<CR>
" Shortcut to source my .vimrc
nnoremap <leader>sv :source $MYVIMRC<CR>
" Shortcut to disable highlight search
nnoremap <leader>h :set hlsearch! hlsearch?<CR>
" Install plugins
nnoremap <leader>pi :PluginInstall<CR>
" Clean removed plugins
nnoremap <leader>pc :PluginClean<CR>
" Bookmark in NERDTree
nnoremap <leader>nb :Bookmark<CR>
" Shortcut to navigate between splits
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
" Center the screen
nnoremap <space> zz
" Act like D and C
nnoremap Y y$ "
" Fugitive mappings
nnoremap <leader>ga :Git add %:p<CR><CR>
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>gc :Gcommit -v -q<CR>
nnoremap <leader>gt :Gcommit -v -q %:p<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gp :Gpush<CR>
nnoremap <leader>gu :Gpull<CR>
nnoremap <leader>gb :Git branch<Space>
nnoremap <leader>gbl :Gblame<CR>
nnoremap <leader>go :Git checkout<Space>
nnoremap <leader>gl :silent! Glog<CR>:bot copen<CR>
" Remove arrow keys to force to use hjkl
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>
vnoremap <up> <nop>
vnoremap <down> <nop>
vnoremap <left> <nop>
vnoremap <right> <nop>
"inoremap <esc> <nop>
" Remap arrow keys to scroll
noremap <Down> <c-e>
noremap <Up> <c-y>
" Trip all trailing whitespace in the current file
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<CR>
" Copy and paste to system clipboard
vmap <leader>y "+y
vmap <leader>d "+d
vmap <leader>p "+p
vmap <leader>P "+P
nmap <leader>p "+p
nmap <leader>P "+P
" Select what you've just pasted
noremap gV `[v`]
" Shortcut to fast exit insert mode
inoremap jk <esc>
" Write as sudo
cmap w!! w !sudo tee % >/dev/null
" Toggle relativenumber
nnoremap <leader>r :set relativenumber!<cr>
" Map tab in normal and visual mode to match bracket
nnoremap <tab> %
vnoremap <tab> %
" Map to sort in visual mode
vnoremap <leader>s :'<,'>sort<cr>
nnoremap j gj
nnoremap k gk
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Auto commands
" Remember last line on file
autocmd BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
" Auto open NERDTree if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" Auto close NERDTree if it is the only left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" Abbreviations
" insert abbreviations
iabbrev @@ verzola@gmail.com
iabbrev :tick: ✔
iabbrev [OK] ✔
iabbrev :cross: ✘
iabbrev [x] ✘
" command abbreviations
cnoreabbrev W w
cnoreabbrev Q q
cnoreabbrev WQ wq
cnoreabbrev X x
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""" End
