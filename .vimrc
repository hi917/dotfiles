" === Plugins
call plug#begin('~/.vim/plugged')
" Utility
Plug 'tpope/vim-surround'
Plug 'preservim/nerdtree'

" === Appearance 
Plug 'sheerun/vim-polyglot'
Plug 'morhetz/gruvbox'
Plug 'itchyny/lightline.vim'
Plug 'shinchu/lightline-gruvbox.vim'
call plug#end()

" NERDTree
" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() |
    \ quit | endif
let g:NERDTreeDirArrowExpandable = '▸'  " Change default NERDTree arrows
let g:NERDTreeDirArrowCollapsible = '▾' " Change default NERDTree arrows

" FZF
"let g:fzf_preview_window = ['up:40%:hidden', 'ctrl-/']

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
set wildmenu  " Make tab completion for files/buffers act like bash

" === Mappings
let mapleader = ','
nnoremap // :noh<CR>
nnoremap <C-H> <C-W><C-H> 
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <leader>t :NERDTreeToggle<CR>
