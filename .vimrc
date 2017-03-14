" Disable arrow keys
noremap <Up>     <NOP>
noremap <Down>   <NOP>
noremap <Left>   <NOP>
noremap <Right>  <NOP>

inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" Set auto read when file changed from outside
set autoread

" Show matching brackets
set showmatch

set noswapfile

set ai "Auto indent
set si "Smart indent
set wrap "Wrap lines

" Treat long lines as broken lines
map j gj
map k gk

" Map <Space> to / (search) and Ctrl-<Space> to ? (backwards search)
map <space> /
map <c-space> ?

" Return to last edit position when opening file
autocmd BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") | 
    \   exe "normal! g`\"" |
    \ endif

" Remap 0 to first non-blank character
map 0 ^

" Syntax highlighting
syntax on

" Syntax for C++11 files
au BufNewFile,BufRead *.cpp,*hpp set syntax=cpp11

" Local, project-specific vimrcs and secure
set exrc
set secure
