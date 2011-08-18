" THE NEXT 3 LINES MUST BE FIRST
filetype off
call pathogen#runtime_append_all_bundles()
filetype plugin indent on
" ADD YOUR LINES BELOW HERE

" handle 256 colors in gnome terminal
set t_Co=256

" turn off CSApprox complaints re: +gui since vim 7.3 doesn't need it
let g:CSApprox_verbose_level=0

" Set encoding
set encoding=utf-8

" Whitespace stuff
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab

" Searching
set hlsearch
set incsearch
set ignorecase
set smartcase

" Tab completion
set wildmode=list:longest,list:full
set wildignore+=*.o,*.obj,.git,*.rbc,*.class,.svn,vendor/gems/*

" Status bar
set laststatus=2

" Enable syntastic syntax checking
let g:syntastic_enable_signs=1
let g:syntastic_quiet_warnings=1

" gist-vim defaults
if has("mac")
  let g:gist_clip_command = 'pbcopy'
elseif has("unix")
  let g:gist_clip_command = 'xclip -selection clipboard'
end

" Make tab navigation nicer
map <C-J> :tabn<CR>
map <C-K> :tabp<CR>

" Make opening files in a new tab nicer
" NOTE: This overrides a vim default for C-O, but is way nicer imo
map <C-O> :tabnew 

" Show trailing whitespace and spaces before a tab:
:highlight ExtraWhitespace ctermbg=red guibg=red
:autocmd Syntax * syn match ExtraWhitespace /\s\+$\| \+\ze\\t/

" Turn off menu in gui
set guioptions="agimrLt"

" Turn off mouse click in gui
set mouse=""

" use solarized theme
let g:solarized_termtrans=0
syntax enable
set background=dark
colorscheme solarized

" highlight the current line
set cursorline

" Show linenumbers
set number
set ruler

" Include user's local vim config
if filereadable(expand("~/.vimrc.local"))
  source ~/.vimrc.local
endif
