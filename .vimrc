set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 0
let g:syntastic_check_on_wq = 1
let g:syntastic_javascript_checkers = ['eslint']
let g:ycm_show_diagnostics_ui = 0
let g:syntastic_enable_highlighting = 0

let g:syntastic_mode_map = {
    \ "mode": "active",
    \ "active_filetypes": ["javascript"],
    \ "passive_filetypes": ["ruby"] }

Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 1
let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

Plugin 'Raimondi/delimitMate'
let delimitMate_expand_cr=1

Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>"


Plugin 'ternjs/tern_for_vim'

Plugin 'pangloss/vim-javascript', { 'for': 'javascript' }
Plugin 'jelera/vim-javascript-syntax'
hi link javaScriptTemplateVar Identifier
hi link javaScriptTemplateString String
Plugin 'othree/javascript-libraries-syntax.vim'


Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1

Plugin 'scrooloose/nerdtree'

let NERDTreeShowHidden=1
map <silent> <leader>n :NERDTreeToggle<CR> :NERDTreeMirror<CR>

Plugin 'wincent/command-t'
let g:CommandTMaxHeight = 30
let g:CommandTMaxFiles = 500000

Plugin 'elzr/vim-json'

Plugin 'tpope/vim-unimpaired'

Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

Plugin 'w0ng/vim-hybrid'

Plugin 'mattn/emmet-vim'

call vundle#end()            " required
filetype plugin indent on    " required

set number
set linespace=1
set showtabline=2

filetype plugin indent on

set tabstop=2

set shiftwidth=2

set expandtab


if has('gui_running')
	set background=dark
	colorscheme hybrid
	 set guifont=Monaco

   " Press Ctrl-Tab to switch between open tabs (like browser tabs) to 
   " the right side. Ctrl-Shift-Tab goes the other way.
   noremap <C-Tab> :tabnext<CR>
   noremap <C-S-Tab> :tabprev<CR>
  " Switch to specific tab numbers with Command-number
  noremap <D-1> :tabn 1<CR>
  noremap <D-2> :tabn 2<CR>
  noremap <D-3> :tabn 3<CR>
  noremap <D-4> :tabn 4<CR>
  noremap <D-5> :tabn 5<CR>
  noremap <D-6> :tabn 6<CR>
  noremap <D-7> :tabn 7<CR>
  noremap <D-8> :tabn 8<CR>
  noremap <D-9> :tabn 9<CR>
  
  " Command-0 goes to the last tab
  noremap <D-0> :tablast<CR>
endif

command NT NERDTree
command T CommandT
command SR SyntasticReset

inoremap jk <ESC>

let mapleader = "\<Space>"
filetype plugin indent on
syntax on
set encoding=utf-8
execute pathogen#infect()
set spell spelllang=en_us
nnoremap <leader>f 1z=
nnoremap <leader>s :set spell!
nnoremap <leader>l :set number
vnoremap . :norm.<CR>

nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
