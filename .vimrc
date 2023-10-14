" base config
set nu
set nocompatible
set noruler
set encoding=utf-8

" tab size & indent
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set smarttab
set autoindent

" hidden buffers
set hidden

" rendering
set ttyfast

" search
set hlsearch
set incsearch
set ignorecase
set smartcase

" disable netrw
let loaded_netrwPlugin = 1

" escape delay removed
set timeoutlen=1000
set ttimeoutlen=0

" plugins
call plug#begin()
Plug 'VonHeikemen/midnight-owl.vim'
Plug 'bling/vim-bufferline'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'preservim/nerdtree'
call plug#end()

" theme
set termguicolors
syntax enable 
colorscheme midnight-owl

" bufferline
let g:bufferline_show_bufnr = 0
let g:bufferline_fname_mod = ':p:.'

" nerd tree
let NERDTreeShowHidden=1

" mappings
nnoremap j gj
nnoremap k gk
let $FZF_DEFAULT_COMMAND='find . \( -name node_modules -o -name .git \) -prune -o -print'
noremap <c-f> :Files<cr>
nnoremap <c-n> :bn!<cr>
nnoremap <c-p> :bp!<cr>
nnoremap <c-q> :bd!<cr>
nnoremap <C-t> :NERDTreeToggle<CR>
