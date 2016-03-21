"------------------------------------------------------------------------------
"Plugins
"------------------------------------------------------------------------------
filetype plugin indent on

"------------------------------------------------------------------------------
"Appearance
"------------------------------------------------------------------------------
syntax enable
let base16colorspace=256

set nowrap
set title
set visualbell
set number
set ruler
set autoindent
set nostartofline
set expandtab
set textwidth=0 wrapmargin=0
set cmdheight=2
set tabstop=2
set shiftwidth=2
set nocompatible
set backspace=2
let mapleader=","
set timeout timeoutlen=1500
set lazyredraw

set title
set titleold=""
set titlestring=VIM:\ %F

set colorcolumn=80
highlight ColorColumn ctermbg=1

"tab completion
set wildmode=longest,list,full
set wildmenu

"change vim bracket highlighting color
hi MatchParen cterm=bold ctermbg=none ctermfg=1


"------------------------------------------------------------------------------
"Behavior
"------------------------------------------------------------------------------
filetype plugin on
set nocompatible

" Ctrl-j/k deletes blank line below/above, and Alt-j/k inserts.
nnoremap <silent><C-j> m`:silent +g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><C-k> m`:silent -g/\m^\s*$/d<CR>``:noh<CR>
nnoremap <silent><A-j> :set paste<CR>m`o<Esc>``:set nopaste<CR>
nnoremap <silent><A-k> :set paste<CR>m`O<Esc>``:set nopaste<CR>

" Start NERDTree on vim startup & close the nerdtree if no more files are open
"autocmd VimEnter * NERDTree

set mouse=a

" <Ctrl-l> redraws the screen and removes any search highlight
nnoremap <silent> <C-l> :nohl<CR><C-l>

" airline
let g:airline#extensions#tabline#enabled = 1
let g:airline_enable_branch     = 1
let g:airline_enable_syntastic  = 1


" plasticboy markdown & git-gutter
let g:vim_markdown_math = 1
let g:vim_markdown_frontmatter = 1
let g:vim_markdown_folding_disabled = 1
"let g:gitgutter_highlight_lines = 1

" syntastic
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

" auto paste
" https://coderwall.com/p/if9mda/automatically-set-paste-mode-in-vim-when-pasting-in-insert-mode
let &t_SI .= "\<Esc>[?2004h"
let &t_EI .= "\<Esc>[?2004l"

inoremap <special> <expr> <Esc>[200~ XTermPasteBegin()

function! XTermPasteBegin()
    set pastetoggle=<Esc>[201~
      set paste
        return ""
      endfunction]]
"]"
"]"

"------------------------------------------------------------------------------
"Search
"------------------------------------------------------------------------------
set infercase
set nohlsearch
set incsearch
