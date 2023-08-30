" Install plug.vim if not installed
let install_plugins = 0
if empty(glob('~/.vim/autoload/plug.vim'))
    silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
        \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    let install_plugins = 1
endif

" === Plugins
call plug#begin('~/.vim/plugged')
" Utility
Plug 'preservim/tagbar'
Plug 'jiangmiao/auto-pairs'
Plug 'mbbill/undotree'
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'
Plug 'dense-analysis/ale'

" === Appearance
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

" Install plugins if plug.vim was installed
if install_plugins == 1
    echo 'Installing plugins...'
    silent !PlugInstall
    echo 'Done.'
endif

" Ale
let g:ale_linters = {
    \ '*': [],
    \ 'python': ['flake8'],
    \
    \ }
let g:ale_fixers = {
    \ '*': [],
    \ 'python': ['black', 'isort'],
    \
    \ }
let g:ale_fix_on_save = 1

" NERDTree
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
let g:NERDTreeDirArrowExpandable = '▸'  " Change default NERDTree arrows
let g:NERDTreeDirArrowCollapsible = '▾' " Change default NERDTree arrows

" === Appearance
syntax enable  " Enable syntax highlighting
set background=dark  " Dark background
set termguicolors  " Enable true color support
colorscheme gruvbox  " Set color scheme to gruvbox
set noshowmode  " Remove mode message on the last line
" Configure lightline
let g:lightline = {
    \ 'colorscheme': 'gruvbox',
    \ }

" === Line Number
set number  " Print the line number in front of each line
set relativenumber  " Show relative line number in front of each line

" === Search
set hlsearch  " Highlight matches with last search pattern
set incsearch  " Highlight match while typing search pattern

" === Tabs and Indents
set expandtab  " Make the tab key (in insert mode) insert spaces instead of a tab character
set shiftwidth=4  " The size of an 'indent', measured in spaces
set smarttab  " Makes a <BS> delete a 'shiftwidth' worth of space at the start of the line.
set softtabstop=4  " Make the tab key (in insert mode) insert spaces and tabs to simulate tab stops at this width
set tabstop=4  " Make vim interpret <Tab> to be 4 spaces.

" === Text
set nowrap  " Disable long lines wrapping and continuing on next line

" === Window
set splitbelow  " New window from split is below the current one
set splitright  " New window is put right of the current one

" === Vim Behavior
set nobackup  " Disable keep backup file after overwriting a file
set noswapfile  " Disable writing intermediate swap files
set visualbell  " Use visual bell; no beep
set wildmenu  " Show menu on Tab
set wildmode=list:longest,list:full " Bash like Tab completion
set undofile  " Maintain undo history between sessions
set undodir=~/.vim/undofiles  " Set undo directory
autocmd BufWritePre * %s/\s\+$//e  " Automatically remove trailing whitespace on save
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=0  " Disable automatic commenting on newline

" === Mappings
let mapleader = ' '
nnoremap // :noh<CR>
nnoremap /n :set nu! rnu!<CR>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <leader>n :NERDTreeToggle<CR>
nnoremap <leader>u :UndotreeToggle<CR>
nnoremap <leader>t :TagbarToggle<CR>
