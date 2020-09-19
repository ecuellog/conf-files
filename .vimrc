set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab 
set smartindent
set nu
set noswapfile
set nobackup
set undodir=~/.vim/undodir
set undofile
set showcmd
set showmatch
set undofile
set incsearch
set laststatus=2

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-fugitive'
Plug 'vim-utils/vim-man'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'git@github.com:Valloric/YouCompleteMe.git'
Plug 'mbbill/undotree'
Plug 'rakr/vim-one'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'itchyny/lightline.vim'
Plug 'preservim/nerdtree'
Plug 'preservim/nerdcommenter'
Plug 'mileszs/ack.vim'

"Colorschemes
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'wadackel/vim-dogrun'
Plug 'arzg/vim-colors-xcode'
Plug 'mcmartelle/vim-monokai-bold'
Plug 'flrnd/candid.vim'
Plug 'joshdick/onedark.vim'
Plug 'sts10/vim-pink-moon'

call plug#end()

colorscheme pink-moon 
set background=dark
set termguicolors

"Sets bg color as transparent to match whatever color the terminal is
highlight Normal ctermbg=NONE
highlight Normal guibg=NONE

"Remaps
let mapleader=' ' 

"Navigate with ijkl, insert with h
noremap h i
noremap i k
noremap k j
noremap j h

""Navigate panes
noremap <leader>i <C-w>k
noremap <leader>k <C-w>j
noremap <leader>j <C-w>h
noremap <leader>l <C-w>l

"Navigate inside nerdtree
let g:NERDTreeMapOpenSplit='h' 
let g:NERDTreeMenuDown='k' 
let g:NERDTreeMenuUp='i' 
let g:NERDTreeMenuLeft='j' 
let g:NERDTreeMenuRight='l' 
let g:NERDTreeMapJumpNextSibling="☻"
let g:NERDTreeMapJumpPrevSibling="☺"

"Move windows
noremap <leader>I <C-w>K
noremap <leader>K <C-w>J
noremap <leader>J <C-w>H
noremap <leader>L <C-w>L

"Resize windows
noremap <C-j> :resize -5<CR>
noremap <C-i> :resize +5<CR>
noremap <C-l> :vertical resize +5<CR>
noremap <C-j> :vertical resize -5<CR>

"Switch to last buffer
noremap <leader>y <C-^>

"Switch to previous and next buffer
noremap <leader>u :bp<CR>
noremap <leader>o :bn<CR>

"Search for a file
noremap <leader>p :Files<CR>

"Open current file in a new tab/ close the tab. Simulate fullscreen.
noremap <leader>f :tabedit %<CR>
noremap <leader>F :tabclose<CR>

noremap <leader>t :NERDTreeToggle<CR>
noremap <leader>q :q<CR>
noremap <leader>s :w<CR>
noremap <leader>- :sp<CR>
noremap <leader>\ :vsp<CR>
noremap <leader>O o<Esc>
