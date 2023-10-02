"https://github.com/mhinz/vim-galore/blob/master/static/minimal-vimrc.vim



"Plugs
"""""""""""""""""""""""""""""""""""""""""""""""""
call plug#begin()
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fugitive'
Plug 'preservim/nerdcommenter'
Plug 'dcampos/nvim-snippy'
Plug 'honza/vim-snippets'
Plug 'hrsh7th/nvim-compe'
call plug#end()


"General Configurations
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set number
filetype plugin indent on      " Load plugins according to detected filetype.
"syntax on                      " Enable syntax highlighting.
set autoindent                  " Indent according to previous line.
set noexpandtab                 " Use tabs instead of spaces.
set tabstop=8                   " Tab key indents by 8 spaces.
set shiftwidth=8                " >> indents by 8 spaces.
set shiftround                  " >> indents to next multiple of 'shiftwidth'.
set backspace=indent,eol,start  " Make backspace work as you would expect.
set hidden                      " Switch buffers without having to save first.
set laststatus=2                " Always show statusline.
set showmode                    " Show current mode in command-line.
set showcmd                     " Show already typed keys when more are expected
set incsearch                   " Highlight while searching with / or ?.
set hlsearch                    " Keep matches highlighted.
set splitbelow                  " Open new windows below the current window.
set splitright                  " Open new windows right of the current window.
set wrapscan                    " Searches wrap around end-of-file.
set mouse=                      " Disable Mouse
set completeopt=menuone,noselect
set guicursor=i:block		" Set insert mode cursor to block



"https://stackoverflow.com/questions/235439/vim-80-column-layout-concerns
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/



let mapleader = "." " map leader to dot
map <leader>cp <plug>NERDCommenterAppend


"LightLine
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:lightline = {'colorscheme': 'molokai'}
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"Snippets
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
imap <expr> <Tab> snippy#can_expand_or_advance() ? '<Plug>(snippy-expand-or-advance)' : '<Tab>'
imap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
smap <expr> <Tab> snippy#can_jump(1) ? '<Plug>(snippy-next)' : '<Tab>'
smap <expr> <S-Tab> snippy#can_jump(-1) ? '<Plug>(snippy-previous)' : '<S-Tab>'
xmap <Tab> <Plug>(snippy-cut-text)
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""



"Complete POP
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set wildmode=longest,list,full
set wildmenu



let g:compe = {}
let g:compe.enabled = v:true
let g:compe.autocomplete = v:true
let g:compe.debug = v:false
let g:compe.min_length = 1
let g:compe.preselect = 'enable'
let g:compe.throttle_time = 80
let g:compe.source_timeout = 200
let g:compe.resolve_timeout = 800
let g:compe.incomplete_delay = 400
let g:compe.max_abbr_width = 100
let g:compe.max_kind_width = 100
let g:compe.max_menu_width = 100
let g:compe.documentation = v:true

let g:compe.source = {}
let g:compe.source.path = v:true
let g:compe.source.buffer = v:true
let g:compe.source.calc = v:true
let g:compe.source.nvim_lsp = v:true
let g:compe.source.nvim_lua = v:true
let g:compe.source.vsnip = v:true
let g:compe.source.ultisnips = v:true
let g:compe.source.luasnip = v:true
let g:compe.source.emoji = v:true
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
