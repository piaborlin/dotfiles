
call plug#begin('~/.vim/plugged')

Plug 'nanotech/jellybeans.vim'
Plug 'scrooloose/nerdtree'
Plug 'mileszs/ack.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'fatih/vim-go'

call plug#end()



" SETTINGS
" ------------------------------------------------------------------------------

set nocompatible                            " Enable vim-specific features
filetype off                                " Reset filetype detection
filetype plugin indent on                   " Enable filetype detection

set spelllang=en_gb                         " Set spell checker language
autocmd FileType gitcommit setlocal spell   " Turn on spell checker for Git commit messages

set backspace=indent,eol,start              " Make backspace work (needed for bash)

" COLORS
" ------------------------------------------------------------------------------

syntax enable
set t_Co=256

set background=dark
colorscheme jellybeans



" MAPPINGS
" ------------------------------------------------------------------------------

let mapleader=","

" Switch between last two buffers
nnoremap <leader><leader> <C-^>

" NERDTree
noremap <Leader>n :NERDTreeToggle<cr>
noremap <Leader>f :NERDTreeFind<cr>
let NERDTreeShowHidden=1

"split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Tab between buffers
noremap <tab> <c-w>w
noremap <S-tab> <c-w>W
