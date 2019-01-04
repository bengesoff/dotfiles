" Spaces and Tabs {{{
set tabstop=2		      " number of visual spaces per tab
set shiftwidth=2      " two spaces for >> and <<
set smartindent       " insert indentation if it looks like a good idea
" }}}

" UI config {{{
set number		                                " show line numbers
set showcmd		                                " show command in bottom bar
set cursorline		                            " highlight current line
set showmatch                                 " highlight matching [{( characters
" }}}

" Searching {{{
set incsearch                                   " search as characters are entered
set hlsearch                                    " highlight matches
" turn off search highlight with Leader-Space
nnoremap <leader><space> :nohlsearch<CR>

" use ripgrep for grep
if executable('rg')
  let g:ackprg='rg --vimgrep --no-heading'
endif
" }}}

" Splits {{{
set splitbelow " where new splits appear
set splitright
" map easier keys to move between splits
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
" }}}

" Folding {{{
set foldenable                                  " enable folding
set foldlevelstart=10                           " open most folds by default
set foldnestmax=10                              " limit folds to 10 levels nesting
" toggle folds with Space
nnoremap <space> za
set foldmethod=syntax                           " set folds based on indent level
" }}}

" Movement {{{
" move to beginning/end of line
nnoremap B ^
nnoremap E $
" }}}

" Leader Shortcuts {{{
" jk is escape
inoremap jk <esc>
nnoremap <leader>s :Ack!<space>
" }}}

" Plugins {{{
" Install vim-plug from https://github.com/junegunn/vim-plug to use these
" plugins
call plug#begin('~/.local/share/nvim/plugged')

" Javascript syntax highlighting
Plug 'pangloss/vim-javascript' | Plug 'mxw/vim-jsx'
let g:jsx_ext_required=0 " JSX doesn't need an extension
Plug 'leafgarland/typescript-vim'

Plug 'rust-lang/rust.vim'

Plug 'scrooloose/nerdtree'

Plug 'tomasr/molokai'

Plug 'mileszs/ack.vim'

Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

let g:deoplete#enable_at_startup = 1
" deoplete tab-complete
inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"

call plug#end()
" }}}

" NERDTree {{{
" open NERDTree if there isn't a file open and also close it if it's the last
" open thing
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
" Toggle with Ctrl-t
nmap <silent> <C-t> :NERDTreeToggle<CR>
" }}}

" Colorscheme {{{
colorscheme molokai
highlight Comment ctermfg=Magenta
" }}}

set modelines=1

" vim:foldmethod=marker:foldlevel=0
