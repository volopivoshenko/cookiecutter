call plug#begin('~/.vim/plugged')
Plug 'frazrepo/vim-rainbow'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'https://github.com/joshdick/onedark.vim.git'
Plug 'cespare/vim-toml', { 'branch': 'main' }
Plug 'preservim/nerdtree'
Plug 'ryanoasis/vim-devicons'
call plug#end()

" syntax highlighting
syntax on
filetype plugin on
set encoding=utf-8

" theme configuration
colorscheme onedark
autocmd vimenter * ++nested colorscheme onedark
set termguicolors " use true colors
set laststatus=2 " display the status line
set cursorline " highlight line
set colorcolumn=100 " highlight breakline
set list listchars=tab:»-,trail:·,extends:»,precedes:« " display indents

" hybrid line numbers
set number relativenumber
set nu rnu

" general configuration
set mouse=a  " mouse support
set noswapfile " don't create tmp files
set nocompatible " use vim settings rather than vi settings
set clipboard=unnamed

" indents configuration
set tabstop=4 " tab size
set autoindent " autotab
set backspace=indent,eol,start " behavior of the backspace key

" NERD tree configuration
autocmd VimEnter * NERDTree | wincmd p " open tree on startup
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif " quit tree along with vim
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" status bar configuration
let g:airline_powerline_fonts=1  " diplay symbols
