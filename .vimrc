set runtimepath^=~/.vim/bundle/ctrlp.vim
execute pathogen#infect()
set nocompatible                " choose no compatibility with legacy vi
syntax enable
set encoding=utf-8
set showcmd                     " display incomplete commands
filetype plugin indent on       " load file type plugins + indentation

" Whitespace
set nowrap
set tabstop=2 shiftwidth=2      " a tab is two spaces (or set this to 4)
set expandtab                   " use spaces, not tabs (optional)
set backspace=indent,eol,start  " backspace through everything in insert mode

"" Searching
set hlsearch                    " highlight matches
set incsearch                   " incremental searching
set ignorecase                  " searches are case insensitive...
set smartcase                   " ... unless they contain at least one capital letter

"Erase buffers when they are being displayed"
set bufhidden=wipe



" Quickly moving to the end of the line in both normal and visual mode
map fl $

"Eliminating search highlights"
map \nh :noh<CR>

" Quickly yanking into the clipboard
vmap <C-y> "+y
vmap <C-y> "+y
     
" Quickly pasting from the clipboard
nmap m "+p

" Vim Rspec shortcuts
map <Space>t :call RunCurrentSpecFile()<CR>
map <Space>s :call RunNearestSpec()<CR>
map <Space>l :call RunLastSpec()<CR>
map <Space>a :call RunAllSpecs()<CR>

" Ctr hjkl navegation to move quickly through different splits
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

"Set better split defaults"
set splitbelow
set splitright

" Show line number
set number

"Quickly saving a file"
noremap <Leader>s :update<CR>

"Accessing snippets"
noremap <Leader>es :vs<CR>:UltiSnipsEdit<CR>

"Quickly accessing nerdTree"
map tr :NERDTree<CR>

" Abbreviates
ca rv Rview
ca rc Rcontroller
ca rm Rmodel
ca rs Rspec
ca spelling set spell spelllang=en_us
ca editsnip UltiSnipsEdit

" Avoiding the annoying swap files
set noswapfile

" Automatic brackets setting
:inoremap ( ()<Esc>i
:inoremap [ []<Esc>i
:inoremap { {}<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i

"Setting default color scheme in gvim"
colorscheme torte

"Quickly toggle comments"
vmap / gc

"Remapping snipmate tab trigger so that it does not conflict with YCM"
let g:UltiSnipsExpandTrigger="<F2>"
let g:UltiSnipsJumpForwardTrigger="<F2>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
let g:UltiSnipsListSnippets="<c-s>"
