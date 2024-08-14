" Install vim-plug https://github.com/junegunn/vim-plug
" Create '~/.config/nvim/plugged' directory to install plugins
" Initialize plugin system
call plug#begin('~/.vim/plugged')
  Plug 'preservim/nerdtree'
  Plug 'patstockwell/vim-monokai-tasty'
  Plug 'itchyny/lightline.vim'
  Plug 'vim-airline/vim-airline'
  Plug 'vim-airline/vim-airline-themes'
  Plug 'airblade/vim-gitgutter'
  Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
  Plug 'junegunn/fzf.vim'
  " Install ack system package to work tagbar plugin(ex- Ubuntu: apt install ack or Arch: pacman -S ack)
  Plug 'mileszs/ack.vim'
  Plug 'tpope/vim-surround'
call plug#end()

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
" syntax on
" colorscheme industry

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

" NERD Tree
map <leader>nn :NERDTreeToggle<CR>                  " Toggle NERD tree.

" Monokai-tasty
let g:vim_monokai_tasty_italic = 1                  " Allow italics.
colorscheme vim-monokai-tasty                       " Enable monokai theme.

" LightLine.vim 
set laststatus=2              " To tell Vim we want to see the statusline.
let g:lightline = {
   \ 'colorscheme':'monokai_tasty',
   \ }

" General NVIM/VIM Settings

" Mouse Integration
set mouse=i

" Search
set ignorecase                  " To ignore case when searching.
set smartcase                   " When searching try to be smart about cases.
set hlsearch                    " To highlight search results.
set incsearch                   " To make search act like search in modern browsers.
set magic                       " For regular expressions turn magic on.

" Brackets
set showmatch                   " To show matching brackets when text indicator 
                                " is over them.
set mat=2                       " How many tenths of a second to blink 
                                " when matching brackets.

" Errors
set noerrorbells                " No annoying sound on errors.

" Color & Fonts
syntax enable                   " Enable syntax highlighting.
set encoding=utf8                " Set utf8 as standard encoding and 
                                 " en_US as the standard language.
" Enable 256 colors palette in Gnome Terminal.
if $COLORTERM == 'gnome-terminal'
    set t_Co=256
endif

try
    colorscheme desert
catch
endtry

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

" Tagbar
nmap <F8> :TagbarToggle<CR>

" FZF fuzzy search key remap
nnoremap <leader>fo :FZF<CR>
tnoremap <leader>fc <Esc>

" Files & Backup
set nobackup                     " Turn off backup.
set nowb                         " Don't backup before overwriting a file.
set noswapfile                   " Don't create a swap file.
set ffs=unix,dos,mac             " Use Unix as the standard file type.

" Return to last edit position when opening files
au BufReadPost * if line("'\"") > 1 && line("'\"") <= line("$") | exe "normal! g'\"" | endif
