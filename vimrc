set tabstop=4

call pathogen#infect()

syntax on
set number
" colorscheme dawn 
colorscheme pyte
filetype plugin indent off

" #### Backup location
set backup
set backupdir=$HOME/backup/.vim_backup//       "where to put those backups
set directory=$HOME/backup/.vim_swp//           "this is for swp files  

" Window navigation
" use ctrl-h/j/k/l to switch between splits
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l
map <C-h> <C-w>h

" NERDTree
autocmd vimenter * if !argc() | NERDTree | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

let g:NERDTreeChDirMode=2 "vim current directory follows NERDTree
