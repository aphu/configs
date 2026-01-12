set autoindent
set clipboard=unnamed
set expandtab
set nofoldenable
set number
set relativenumber
set shiftwidth=4
set tabstop=4

syntax on

xnoremap @ :normal! @a<cr>

call plug#begin()
Plug 'airblade/vim-gitgutter'
Plug 'jiangmiao/auto-pairs'
Plug 'joshdick/onedark.vim'
Plug 'junegunn/vim-easy-align'
Plug 'preservim/nerdtree'
Plug 'sheerun/vim-polyglot'
call plug#end()

colorscheme onedark
set termguicolors

"Plugin Configs
