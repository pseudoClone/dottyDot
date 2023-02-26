"https://github.com/mhinz/vim-galore/blob/master/static/minimal-vimrc.vim



"Plugs
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdcommenter'
Plug 'tpope/vim-fugitive'
call plug#end()


"General Configurations
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set colorcolumn=72
set number
filetype plugin indent on      " Load plugins according to detected filetype.
"syntax on                      " Enable syntax highlighting.
set autoindent                  " Indent according to previous line.
set noexpandtab                 " Use tabs instead of spaces.
set tabstop=8                   " Tab key indents by 8 spaces.
set shiftwidth=8                " >> indents by 8 spaces.
set shiftround                  " >> indents to next multiple of 'shiftwidth'.
set backspace=indent,eol,start  " Make backspace work as you would expect.
set hidden                      " Switch between buffers without having to save first.
set laststatus=2                " Always show statusline.
set showmode                    " Show current mode in command-line.
set showcmd                     " Show already typed keys when more are expected.
set incsearch                   " Highlight while searching with / or ?.
set hlsearch                    " Keep matches highlighted.
set splitbelow                  " Open new windows below the current window.
set splitright                  " Open new windows right of the current window.
set wrapscan                    " Searches wrap around end-of-file.
set mouse=                      " Disable Mouse



let mapleader = "." " map leader to dot
map <leader>cp <plug>NERDCommenterAppend



"VimWiki
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:vimwiki_list = [{'path': '~/.vimwiki/',
                      \ 'syntax': 'markdown', 'ext': '.md'}]
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""


"LightLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {'colorscheme': 'molokai'}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
