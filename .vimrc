" Line Number
set number  " print the line number in front of each line
set relativenumber  " show relative line number in front of each line

" Search
set hlsearch  " highlight matches with last search pattern
set incsearch  " highlight match while typing search pattern

" Tabs and Indents
set expandtab  " make the tab key (in insert mode) insert spaces instead of a tab character
set shiftwidth=4  " the size of an 'indent', measured in spaces
set smarttab  " Makes a <BS> delete a 'shiftwidth' worth of space at the start of the line.
set softtabstop=4  " make the tab key (in insert mode) insert spaces and tabs to simulate tab stops at this width
set tabstop=4  " make vim interpret <Tab> to be 4 spaces. 

" Text
set nowrap  " disable long lines wrapping and continuing on next line

" Window
set splitbelow  " new window from split is below the current one
set splitright  " new window is put right of the current one

" Vim Behavior
set nobackup  " disable keep backup file after overwriting a file
set noswapfile " disable writing intermediate swap files
set wildmenu  " make tab completion for files/buffers act like bash
