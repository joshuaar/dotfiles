set nocompatible

"arrow remaps"
"standard gaming arrows, gaming arrows using ijkl instead of wasd"
nnoremap j h
nnoremap k j  
nnoremap i k
nnoremap h i

"tab and indent settings"
set tabstop=4	"Makes tabs 4 spaces"
set autoindent	"makes next lines automatically indent"

"color scheme settings"
set t_Co=256
colorscheme molokai

"UI settings"
set cul                   " highlight current line
set laststatus=2          " last window always has a statusline
set nohlsearch            " Don't continue to highlight searched phrases.
set incsearch             " But do highlight as you type your search.
set ignorecase            " Make searches case-insensitive.
set ruler                 " Always show info along bottom.
set showmatch
set statusline=%<%f\%h%m%r%=%-20.(line=%l\ \ col=%c%V\ \ totlin=%L%)\ \ \%h%m%r%=%-40(bytval=0x%B,%n%Y%)\%P


"highlight lines longer than 80 chars"
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/

"syntax highlighting"
syntax enable
autocmd BufRead,BufNewFile *.py set filetype=py
autocmd Syntax py sou ~/.vim/syntax/python.vim


