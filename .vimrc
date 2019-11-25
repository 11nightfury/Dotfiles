set nocompatible
filetype plugin indent on
syntax on
let mapleader=" "

call plug#begin('~/.vim/plugged')

Plug 'morhetz/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'tpope/vim-commentary'
" Plug 'scrooloose/nerdtree'
Plug 'scrooloose/syntastic'
Plug 'valloric/youcompleteme'
Plug 'Yggdroot/indentLine'
Plug 'suan/vim-instant-markdown'
Plug 'vimwiki/vimwiki'

call plug#end()

" Some basics:
    set clipboard=unnamed
    set ruler
    set hidden
    set nobackup
    set cursorline
    set wildmenu
    set number relativenumber
    set wrap
    set linebreak
    set scrolloff=5

" Edit setting:
    set tabstop=4 " specifies the width of tab character
    set softtabstop=4 "number of spaces in the TAB when editing
    set shiftwidth=4 " determines the amount of whitespace to insert or remove using the indentation
    set expandtab " spaces to be used in place of tab characters

" Search settings:
    set showmatch " highlight matching [{()}]
    set incsearch " search as characters are entered

" Useful settings:
    set history=700
    set undolevels=700

" Splits open at the bottom and right:
    set splitbelow splitright

" Shortcutting spell navigation:
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

" Easier moving of code blocks:
    vnoremap < <gv
    vnoremap > >gv

" Switch between last two open buffers with leader + leader:
    nnoremap <leader><leader> <c-^>

" Switch buffers forward with leader + n:
    nnoremap <leader>n :bn<CR>

" Switch buffers backward with leader + p:
    nnoremap <leader>p :bp<CR>

" Toggle indent lines with leader + i:
    nnoremap <leader>i :IndentLinesToggle<CR>

" Clear the terminal with leader + c:
    nnoremap <leader>c :!clear<CR>

" Run python with leader + r:
    nnoremap <leader>r :!python %s<CR>

" Run Makefile with leader + m:
    nnoremap <leader>m :!gcc %<CR>

" Run c program with leader + a:
    nnoremap <leader>a :!./a.out<CR>

" Open the markdown file: 
    map <leader>M :InstantMarkdownPreview<CR>

" Copy and Paste from vim to another program:
    vnoremap <C-c> "*y :let @+=@*<CR>
    map <C-p> "+P

" " NERDTREE key mapping:
"     :map <C-n> :NERDTree<CR>

" Gruvbox:
     colorscheme gruvbox
     set background=dark

" Vim-airline:
    let g:airline#extensions#tabline#enabled = 1
    let g:airline#extensions#tabline#left_alt_sep = '|'

" Vimwiki uses markdown syntax:
    let g:vimwiki_list = [{'path': '~/vimwiki/',
                          \ 'syntax': 'markdown', 'ext': '.md'}]

" Vim instant markdown:
    let g:instant_markdown_autostart=0

" YouCompleteMe:
    let g:ycm_autoclose_preview_window_after_completion=1

" Indent line:
    set list lcs=tab:\┊\ 
    let g:indentLine_char_list = ['|', '¦', '┆', '┊']
    highlight SpecialKey ctermfg=8
    let g:indentLine_enabled = 0

" Syntastic:
    set statusline+=%#warningmsg#
    set statusline+=%{SyntasticStatuslineFlag()}
    set statusline+=%*
    let g:syntastic_always_populate_loc_list = 1
    let g:syntastic_auto_loc_list = 1
    let g:syntastic_check_on_open = 1
    let g:syntastic_check_on_wq = 0
