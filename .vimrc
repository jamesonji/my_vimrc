set number
set nocompatible              " be iMproved, required
set hidden
set noerrorbells
set tabstop=2 softtabstop=2
set shiftwidth=2
set expandtab

filetype off                  " required
syntax on

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'git://git.wincent.com/command-t.git'
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'frazrepo/vim-rainbow'
Plugin 'morhetz/gruvbox'
Plugin 'preservim/nerdtree'
Plugin 'leafgarland/typescript-vim'
Plugin 'peitalin/vim-jsx-typescript'

call vundle#end()            " required
filetype plugin indent on    " required

autocmd vimenter * colorscheme gruvbox

autocmd vimenter * NERDTree
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
autocmd BufNewFile,BufRead *.tsx,*.jsx set filetype=typescript.tsx

let mapleader = " "
nnoremap <leader>h :wincmd h<CR>
nnoremap <leader>j :wincmd j<CR>
nnoremap <leader>> :wincmd k<CR>
nnoremap <leader>l :wincmd l<CR>
nnoremap <silent> <leader>+ :vertical resize +5<CR>
nnoremap <silent> <leader>- :vertical resize -5<CR>

map <C-o> :NERDTreeToggle<CR>
