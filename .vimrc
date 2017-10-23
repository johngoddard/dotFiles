set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" highlighting for git
Plugin 'airblade/vim-gitgutter'
"
" GitGutter update time
set updatetime=1000

" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

Plugin 'tpope/vim-fugitive'

Plugin 'bling/vim-airline'

Plugin 'vim-airline/vim-airline-themes'
let g:airline_theme='solarized'
let g:airline_solarized_bg='dark'

Plugin 'scrooloose/syntastic'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

set backspace=2 " make backspace work like other apps

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
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

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

Plugin 'wincent/command-t'
set wildignore+=node_modules

Plugin 'junegunn/fzf'
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

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
let g:user_emmet_leader_key='<Tab>'

call vundle#end()            " required
filetype plugin indent on    " required

set number
set linespace=1
set showtabline=2
set incsearch
set ignorecase

set noswapfile


filetype plugin indent on

set tabstop=2

set shiftwidth=2

set expandtab

" color schemes
Plugin 'morhetz/gruvbox'

set background=dark
colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'

if has('gui_running')
  set background=dark
  colorscheme gruvbox
  set guifont=Monaco

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
command SR SyntasticReset
command Def TernDef
command Doc TernDoc
command Type TernType
command Refs TernRefs
command Re TernRename

inoremap jk <ESC>

let mapleader = "\<Space>"
filetype plugin indent on
syntax on
set encoding=utf-8

nnoremap <leader>f 1z=
nnoremap <leader>s :set spell! <enter>
nnoremap <leader>l :set number! <enter>
nnoremap <leader>v :vsplit <enter>
nnoremap <leader>h :split <enter>
nnoremap <leader>w :w <enter>
nnoremap <leader>q :q <enter>
nnoremap <leader><leader> <c-^>
nnoremap <leader>r :NERDTreeFocus <enter>
nnoremap <silent> <leader>f :NERDTreeFind<CR>
nnoremap <leader>n :NERDTreeToggle <enter>

vnoremap . :norm.<CR>

:autocmd InsertEnter,InsertLeave * set cul!

nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

"ctrl p to :FZF for file search
nnoremap <C-p> :FZF <Enter>

Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --column'
