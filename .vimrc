set nocompatible 
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'

" make backspace work like other apps
set backspace=2

" Visualize code indentations
Plugin 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  ctermbg=black
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven ctermbg=darkgrey

let g:indent_guides_guide_size = 1
let g:indent_guides_enable_on_vim_startup = 1

" Quote / bracket / paren autocomplete
Plugin 'Raimondi/delimitMate' 
let delimitMate_expand_cr=1

" Tab to complete text
Plugin 'ervandew/supertab'
let g:SuperTabDefaultCompletionType = "<c-n>"

" Jump to definitions, rename, etc...
Plugin 'ternjs/tern_for_vim'

" Javascript syntax highlighting
Plugin 'pangloss/vim-javascript', { 'for': 'javascript' }

" Javascript syntax highlighting
Plugin 'jelera/vim-javascript-syntax'
hi link javaScriptTemplateVar Identifier
hi link javaScriptTemplateString String

" Javascript library syntax highlighting
Plugin 'othree/javascript-libraries-syntax.vim'

" highlighting for Pug
Plugin 'digitaltoad/vim-pug'

" Lightline status bar
Plugin 'itchyny/lightline.vim'
set laststatus=2

let g:lightline = {
\ 'colorscheme': 'wombat',
\ 'active': {
\   'left': [ ['mode', 'paste'], 
\             ['gitbranch', 'filename', 'modified'] ],
\   'right': [ ['lineinfo'], 
\              ['percent'], 
\              ['readonly', 'linter_warnings', 'linter_errors', 'linter_ok'] ]
\ },
\ 'component_function': {
\   'filename': 'LightLineFilename',
\   'gitbranch': 'fugitive#head'
\ },
\ 'component_expand': {
\   'linter_warnings': 'LightlineLinterWarnings',
\   'linter_errors': 'LightlineLinterErrors',
\   'linter_ok': 'LightlineLinterOK'
\ },
\ 'component_type': {
\   'readonly': 'error',
\   'linter_warnings': 'warning',
\   'linter_errors': 'error'
\ },
\ }

function! LightLineFilename()
  return expand('%')
endfunction
function! LightlineLinterWarnings() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ▲', all_non_errors)
endfunction
function! LightlineLinterErrors() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '' : printf('%d ✗', all_errors)
endfunction
function! LightlineLinterOK() abort
  let l:counts = ale#statusline#Count(bufnr(''))
  let l:all_errors = l:counts.error + l:counts.style_error
  let l:all_non_errors = l:counts.total - l:all_errors
  return l:counts.total == 0 ? '✓ ' : ''
endfunction

" Update and show lightline but only if it's visible (e.g., not in Goyo)
autocmd User ALELint call s:MaybeUpdateLightline()
function! s:MaybeUpdateLightline()
  if exists('#lightline')
    call lightline#update()
  end
endfunction

" Add gutter indicators for lines that have been changed
Plugin 'airblade/vim-gitgutter'

" GitGutter update time
set updatetime=1000

" GitGutter styling to use · instead of +/-
let g:gitgutter_sign_added = '∙'
let g:gitgutter_sign_modified = '∙'
let g:gitgutter_sign_removed = '∙'
let g:gitgutter_sign_modified_removed = '∙'

" Integrated Git commands
Plugin 'tpope/vim-fugitive'

" async liniting
Plugin 'w0rp/ale'

let g:ale_sign_warning = '▲'
let g:ale_sign_error = '✗'
highlight link ALEWarningSign String
highlight link ALEErrorSign Title

" Syntax highlighting for jsx
Plugin 'mxw/vim-jsx'
let g:jsx_ext_required = 0

" Auto align text
Plugin 'godlygeek/tabular'

" Markdown syntax highlighting
Plugin 'plasticboy/vim-markdown'
let g:vim_markdown_folding_disabled = 1

" Display & browse file tree
Plugin 'scrooloose/nerdtree'
let NERDTreeShowHidden=1

set wildignore+=node_modules

" Fuzzy find files
Plugin 'junegunn/fzf'
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

" Search file text
Plugin 'mileszs/ack.vim'
let g:ackprg = 'ag --column'

" JSON highlighting
Plugin 'elzr/vim-json'

" Key mappings
Plugin 'tpope/vim-unimpaired'

" For Ruby on Rails development
Plugin 'vim-ruby/vim-ruby'
Plugin 'tpope/vim-rails'

let g:rubycomplete_buffer_loading = 1
let g:rubycomplete_classes_in_global = 1
let g:rubycomplete_rails = 1

" Colorscheme
Plugin 'w0ng/vim-hybrid'

" Colorscheme
Plugin 'morhetz/gruvbox'

" Expand shorthand markup notation
Plugin 'mattn/emmet-vim'

let g:user_emmet_settings = {
\  'javascript.jsx' : {
\      'extends' : 'jsx',
\  },
\}

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

" Set up colors
colorscheme default

set background=dark
let g:gruvbox_contrast_dark='hard'
colorscheme gruvbox

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

nnoremap <leader>z 1z=
nnoremap <leader>s :set spell! <enter>
nnoremap <leader>l :set number! <enter>
nnoremap <leader>v :vsplit <enter>
nnoremap <leader>h :split <enter>
nnoremap <leader>q :q <enter>
nnoremap <leader>w :w <enter>
nnoremap <leader>e :e <enter>
nnoremap <leader>r :NERDTreeFocus <enter>
nnoremap <silent><leader>f :NERDTreeFind <enter>
nnoremap <leader>n :NERDTreeToggle <enter>
nnoremap <leader>gd :Gdiff <enter>
nnoremap <leader>gs :Gstatus <enter>
nnoremap <leader>gb :Gblame <enter>
nnoremap <leader><leader> <c-^>

vnoremap . :norm.<CR>

:autocmd InsertEnter,InsertLeave * set cul!

" Split switching
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>

"ctrl p to :FZF for file search
nnoremap <C-p> :FZF <Enter>
"ctrl f to search file content
nnoremap <C-f> :Ack<space>

" Quickly navigate between ALE errors
nmap <silent> <C-a> <Plug>(ale_previous_wrap)
nmap <silent> <C-w> <Plug>(ale_next_wrap)

" Quickly navigate between next and previous buffers
nnoremap <C-t> :bnext<CR>
nnoremap <C-e> :bprev<CR>
