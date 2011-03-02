" standard stuff (from http://phuzz.org/vimrc.html)

set nocompatible    " use vim defaults
set ls=2            " allways show status line
set tabstop=4       " numbers of spaces of tab character
set shiftwidth=4    " numbers of spaces to (auto)indent
set scrolloff=3     " keep 3 lines when scrolling
set showcmd         " display incomplete commands

set hlsearch        " highlight searches
set incsearch       " do incremental searching

set ruler           " show the cursor position all the time
set nobackup        " do not keep a backup file

set ignorecase      " ignore case when searching
set smartcase		" smart case
set title           " show title in console title bar
set ttyfast         " smoother changes
"set ttyscroll=0        " turn off scrolling, didn't work well with PuTTY
set modeline        " last lines in document sets vim mode
set modelines=3     " number lines checked for modelines
"set shortmess=atI   " Abbreviate messages
set nostartofline   " don't jump to first character when paging
set whichwrap=b,s,h,l,<,>,[,]   " move freely between files
set autoindent     " always set autoindenting on
set smartindent        " smart indent
set cindent            " cindent
syntax on
"set number			" show line numbers



nnoremap <leader><space> :noh<cr>	" ,<space> clears search highlight
nnoremap <tab> %	" use tab to match bracket pairs
vnoremap <tab> %	" use tab to match bracket pairs



" ctags
let g:ctags_statusline=1 
let generate_tags=1
let g:ctags_revenerate=1

" taglist
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Exit_OnlyWindow = 1     " exit if taglist is last window open
let Tlist_Show_One_File = 1       " Only show tags for current buffer
let Tlist_Enable_Fold_Column = 0  " no fold column (only showing one file)

" Show project on F9
nmap <silent> <F9> <Plug>ToggleProject
nmap <silent> <C-j> <Plug>ToggleProject

" stuff for buffer tabs

let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

let g:FindFileIgnore = ['*.o', '*.pyc', '*/tmp/*', '*/data/*', '*/templates/*/*.py'] 


set tags=./tags,./../tags,./../../tags,./../../../tags,./../../../../../tags


inoremap <tab> <c-r>=Smart_TabComplete()<CR>

" colorscheme dwipal
colorscheme desert256


autocmd FileType python set 




" misc stuff / shortcutso
" sort CSS properties
nnoremap <leader>S ?{<CR>jV/^\s*\}?$<CR>k:sort<CR>:noh<CR>
" reselect text that was just pasted
nnoremap <leader>v V`]
" open a split window and switch to it
nnoremap <leader>w <C-w>v<C-w>l

