" For vundle
set nocompatible
filetype off
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'Valloric/YouCompleteMe'

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

" OTHER SETTINGS

" Tab settings
set tabstop=4
set softtabstop=4
set shiftwidth=4
set noexpandtab

" Line length highlighting
set colorcolumn=110
highlight ColorColumn ctermbg=darkgray

" Disable arrow keys
noremap <Up>     <NOP>
noremap <Down>   <NOP>
noremap <Left>   <NOP>
noremap <Right>  <NOP>

inoremap <Up>    <NOP>
inoremap <Down>  <NOP>
inoremap <Left>  <NOP>
inoremap <Right> <NOP>

" Better split window navigation
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

" Open splits to below and right
set splitbelow
set splitright

" netrw config
let g:netrw_banner = 0
let g:netrw_winsize = 25

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
