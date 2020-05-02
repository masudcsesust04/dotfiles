" Set leader key
let mapleader = "\<Space>"

" Escape key remap
imap jj <Esc>

" Spaces and tabs 
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
set autoindent
set copyindent

" UI config
" set number
set relativenumber
set showcmd
set cursorline
set wildmenu

" Set color scheme
syntax on
colorscheme industry

" Set highliting tabs, space trails char
set listchars=tab:>~,nbsp:_,trail:.
set list

" Tab commands remap
nnoremap <leader>to :tabnew<CR>
nnoremap <leader>tn :tabnext<CR>
nnoremap <leader>tp :tabprev<CR>
nnoremap <leader>tf :tabfirst<CR>
nnoremap <leader>tl :tablast<CR>
nnoremap <leader>tc :tabclose<CR>

" Netrw file explorer settings
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25

augroup ProjectDrawer
  autocmd!
  autocmd VimEnter * :Vexplore
augroup END

" Install vim-plug https://github.com/junegunn/vim-plug
" Create '~/.config/nvim/plugged' directory to install plugins
" Initialize plugin system
call plug#begin('~/.config/nvim/plugged')
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
call plug#end()

" FZF fuzzy search key remap
nnoremap <leader>fo :FZF<CR>
tnoremap <leader>fc <Esc>

