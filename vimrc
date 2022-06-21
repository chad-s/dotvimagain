""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" COLORS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set background=dark
set t_Co=256
set termguicolors

colorscheme srcery
let g:srcery_italic = 1


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" MAPPINGS
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTree Toggle
nmap <leader>d :NERDTreeToggle<CR>

" Close a buffer without closing the view
nmap <silent> <leader>q :b#<CR>:bd#<CR>

" Window switching using ctrl
nmap <silent> <C-k> :wincmd k<CR>
nmap <silent> <C-j> :wincmd j<CR>
nmap <silent> <C-h> :wincmd h<CR>
nmap <silent> <C-l> :wincmd l<CR>

" Map jj as the esc out of insert mode
imap jj <Esc>

" vimoutliner stuff
filetype plugin indent on


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" WHITESPACE
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Settings for avoiding tabs in code.
set expandtab
set shiftwidth=4              " Spaces >> shifts code
set softtabstop=4             " Num spaces tab key creates
set tabstop=4                 " Length of tab
"
" Replace tabs for filetypes where they're needed
autocmd BufNewFile,BufRead [Mm]akefile* set noexpandtab softtabstop=0
autocmd BufNewFile,BufRead *.otl set noexpandtab softtabstop=0
"
" Automatically match previous indentation level
set autoindent

" Trim traling whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Automatically indent the cursor when working with C-style syntax
set smartindent


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" EDITING
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Backspace through everything, like most programs
set backspace=indent,eol,start

" left and right arrow keys and h and l can go across lines
set whichwrap+=<,>,h,l

" Enable mouse navigation
set mouse=a

" Make files scroll together during a diff
""set scrollbind

" F4 to toggle search highlight
nnoremap <F4> :set hls!<CR>

" Make the smartcase below work
set ignorecase

" Make searches case insensitive when containing only lowercase letters.
set smartcase


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" DISPLAY
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set foldcolumn=2
set colorcolumn=101

" Using only the dropdown menu for completion.
set completeopt=menuone

" Show cursor position
set ruler

" Show line numbers
set number

" Turn off line wrapping
set nowrap

" Highlight search terms as you type
set incsearch

" Show matching [] {} ()
set showmode

" Automatically insert the comment character when you hit <enter> (r) or o/O
" (o) in a block comment
set formatoptions+=ro

" This option is only supported on vim 7.4 and above (technically 7.3.582 or
" so)
if v:version > 704
    " When joining two commented lines (J on two selected lines), eliminate
    " leading characters such as # or // and indentation.
    set formatoptions+=j
 endif


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" PLUGIN CONFIG
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let airline#extensions#syntastic#enabled = 0
let g:airline_section_y = "%p%% ☰  %l:%c"
let g:airline_section_z = '%{strftime("%I:%M %p")}'

let g:syntastic_stl_format = ""
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:NERDSpaceDelims = 1
let g:NERDTrimTrailingWhitespace = 1

