call plug#begin('~/.config/nvim/plugged')
    " {{ Theme }}
    Plug 'joshdick/onedark.vim'

    " {{ File Browser }}
    Plug 'preservim/nerdtree'           " File Browser
    Plug 'Xuyuanp/nerdtree-git-plugin'  " Git status
    Plug 'ryanoasis/vim-devicons'       " Icon
    Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

    " {{ Search File }}
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }     " Fuzzy finder
    Plug 'junegunn/fzf.vim'

    " {{ Status bar }}
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'

    " {{ Terminal }}
    Plug 'voldikss/vim-floaterm'    " Terminal
    
    " {{ Code intellisense }}
    Plug 'neoclide/coc.nvim', {'branch': 'release'}
    Plug 'jiangmiao/auto-pairs'                       " Auto pairs
    Plug 'alvan/vim-closetag'                         " Close tag HTML

    Plug 'tpope/vim-fugitive'                         " Git
    Plug 'tpope/vim-dotenv'
    Plug 'tpope/vim-commentary'                       " Comment code
call plug#end()

"================Theme================
syntax on
colorscheme onedark

"================Status bar===========
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

" Show number
set number

" show existing tab with 4 spaces width
set tabstop=4

" when indenting with '>', use 4 spaces width
set shiftwidth=4

" On pressing tab, insert 4 spaces
set expandtab

" Config encoding
set encoding=UTF-8

let g:airline_powerline_fonts = 1

" Extends settings
let nvim_settings_dir = '~/.config/nvim/'
execute 'source '.nvim_settings_dir.'nerdtree.vim'
execute 'source '.nvim_settings_dir.'coc.vim'
execute 'source '.nvim_settings_dir.'floaterm.vim'
execute 'source '.nvim_settings_dir.'fzf.vim'

