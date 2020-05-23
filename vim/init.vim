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
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'airblade/vim-gitgutter'
call plug#end()

" FZF fuzzy search key remap
nnoremap <leader>fo :FZF<CR>
tnoremap <leader>fc <Esc>

" VIM airline
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#branch#enabled = 1

" GIT gutter
" set signcolumn=yes
set updatetime=100
highlight GitGutterAdd guifg=#009900 ctermfg=Green
highlight GitGutterChange guifg=#bbbb00 ctermfg=Yellow
highlight GitGutterAdd guifg=#ff2222 ctermfg=Red

nmap ]h <Plug>(GitGutterNextHunk)
nmap [h <Plug>(GitGutterPrevHunk)

let g:gitgutter_enabled=1
let g:gitgutter_map_keys=0
let g:gitgutter_async=0

