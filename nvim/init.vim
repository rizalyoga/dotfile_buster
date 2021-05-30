"                                 ___     
"        ___        ___          /__/\    
"       /__/\      /  /\        |  |::\   
"       \  \:\    /  /:/        |  |:|:\  
"        \  \:\  /__/::\      __|__|:|\:\ 
"    ___  \__\:\ \__\/\:\__  /__/::::| \:\
"   /__/\ |  |:|    \  \:\/\ \  \:\~~\__\/
"   \  \:\|  |:|     \__\::/  \  \:\      
"    \  \:\__|:|     /__/:/    \  \:\     
"     \__\::::/      \__\/      \  \:\    
"         ~~~~                   \__\/    

call plug#begin('~/.local/share/nvim/plugged')

Plug 'scrooloose/nerdTree'
Plug 'bling/vim-airline'
"Plug 'lokaltog/vim-powerline'
Plug 'flazz/vim-colorschemes'
Plug 'tpope/vim-surround'
Plug 'vim-airline/vim-airline-themes'
Plug 'ryanoasis/vim-devicons'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'chrisbra/csv.vim'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'
Plug 'voldikss/vim-floaterm'
Plug 'Yggdroot/indentLine'
"Plug 'kyazdani42/nvim-tree.lua'
"Plug 'kyazdani42/nvim-web-devicons'

call plug#end()

"---------------------------- Font -------------------------------
"set guifont=DroidSansMono\ Nerd\ Font\ 10
"set guifont=Monaco\ for\ Powerline\ Plus\ Nerd\ File\ Types:h15
"set guifont=Meslo\ LG\ M\ Regular\ for\ Powerline\ Nerd\ Font\ Complete:h12
set guifont=DroidSansMono\ Nerd\ Font\ 12
"=================================================================
"-------------------------- Colorscheme --------------------------
colorscheme eldar
"=================================================================

"----------------------------- DevIcon ---------------------------

let g:airline_powerline_fonts = 1

"=================================================================

"------------------- setting Plugin Airline ----------------------
"let g:airline_theme='base16_monokai'
let g:airline_theme='yoga'

"let g:airline_theme='solarized'
let g:airline#extensions#tabline#enabled = 1

"let g:airline_left_sep = "\uE0B4"
let g:airline_right_sep = "\ue0ba"
"=================================================================

"---------------------- NerdTree Highlight -----------------------
let g:WebDevIconsNerdTreeBeforeGlyphPadding = '  '
"Disable unmatched folder and file icons having the same color as their labels (normally green and white), if set by this plugin (it could have been set by some other plugin that you are using).
let g:WebDevIconsDisableDefaultFolderSymbolColorFromNERDTreeDir = 1
let g:WebDevIconsDisableDefaultFileSymbolColorFromNERDTreeFile = 1

"Disable Highlighting
"let g:NERDTreeDisableFileExtensionHighlight = 1
"let g:NERDTreeDisableExactMatchHighlight = 1
"let g:NERDTreeDisablePatternMatchHighlight = 1

"Highlight full name (not only icons). You need to add this if you don't have vim-devicons and want highlight.
let g:NERDTreeFileExtensionHighlightFullName = 1
let g:NERDTreeExactMatchHighlightFullName = 1
let g:NERDTreePatternMatchHighlightFullName = 1

"Highlight folders using exact match
" enables folder icon highlighting using exact match
let g:NERDTreeHighlightFolders = 1 
" highlights the folder name
let g:NERDTreeHighlightFoldersFullName = 1 

"Source : https://github.com/tiagofumo/vim-nerdtree-syntax-highlight
"=================================================================

"------------------------- Vim Floaters --------------------------
let g:floaterm_keymap_toggle = '<F12>'
"Size Floater
let g:floaterm_width = 0.9
let g:floaterm_height = 0.9
"=================================================================

"------------------------- IndenLine -----------------------------
"let g:indentLine_setColors = 0
let g:indentLine_defaultGroup = '#ffffff'

let g:indentLine_char = '┆'

"let g:indentLine_bgcolor_term = '#ffffff' 
"let g:indentLine_bgcolor_gui = 'red'
"=================================================================

"-------------------------- TreeLua ------------------------------

"=================================================================


" Set compatibility to Vim only.
set nocompatible

"Always show current position
set ruler

" Turn on syntax highlighting.
syntax on

" Turn off modelines
set modelines=0

" Uncomment below to set the max textwidth. Use a value corresponding to the width of your screen.
" set textwidth=80
set formatoptions=tcqrn1
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab
set noshiftround

" Ignore case when searching
set ignorecase

" When searching try to be smart about cases 
set smartcase

" Don't redraw while executing macros (good performance config)
set lazyredraw

" For regular expressions turn magic on
set magic

" Display 5 lines above/below the cursor when scrolling with a mouse.
set scrolloff=5
" Fixes common backspace problems
set backspace=indent,eol,start

" Display options
set showmode
set showcmd
set cmdheight=1

" Highlight matching pairs of brackets. Use the '%' character to jump between them.
set matchpairs+=<:>

" Display different types of white spaces.
"set list
"set listchars=tab:›\ ,trail:•,extends:#,nbsp:.

" Show line numbers
set number
highlight LineNr ctermfg=yellow

" Set status line display
set laststatus=2
hi StatusLine ctermfg=NONE ctermbg=red cterm=NONE
hi StatusLineNC ctermfg=black ctermbg=red cterm=NONE
hi User1 ctermfg=black ctermbg=magenta
hi User2 ctermfg=NONE ctermbg=NONE
hi User3 ctermfg=black ctermbg=blue
hi User4 ctermfg=black ctermbg=cyan
set statusline=\                    " Padding
set statusline+=%f                  " Path to the file
set statusline+=\ %1*\              " Padding & switch colour
set statusline+=%y                  " File type
set statusline+=\ %2*\              " Padding & switch colour
set statusline+=%=                  " Switch to right-side
set statusline+=\ %3*\              " Padding & switch colour
set statusline+=line                " of Text
set statusline+=\                   " Padding
set statusline+=%l                  " Current line
set statusline+=\ %4*\              " Padding & switch colour
set statusline+=of                  " of Text
set statusline+=\                   " Padding
set statusline+=%L                  " Total line
set statusline+=\                   " Padding

" Encoding
set encoding=utf-8

" Highlight matching search patterns
set hlsearch

" Enable incremental search
set incsearch

" Include matching uppercase words with lowercase search term
set ignorecase

" Include only uppercase words with uppercase search term
set smartcase

" Store info from no more than 100 files at a time, 9999 lines of text
" 100kb of data. Useful for copying large amounts of data between files.
set viminfo='100,<9999,s100

" fillchars
set fillchars+=eob:\ 

"Setting tab key
nmap <C-n> :Vexplore<CR>
nmap <C-b> :Sexplore<CR>

"Setting NerdTree Plugin
nmap <C-f> :NERDTreeToggle<CR>
"nmap <C-f> :LuaTreeToggle<CR>

"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * NERDTree 
"autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree()) |q|endif

"Shortcut Split Navigation
map <C-h> <C-w>h
map <C-j> <C-w>j
map <C-k> <C-w>k
map <C-l> <C-w>l

"Setting shortcut tab
"nnoremap <C-Left> :tabp<CR>
"nnoremap <C-Right> :tabn<CR>

