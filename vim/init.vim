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

