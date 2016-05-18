set nocompatible " no compatible with VI

"=============================================================
" PLUGIN MANAGER: Vundle
"===================== VUNDLE BEGIN ==========================
filetype off

set rtp+=$HOME/.vim/bundle/Vundle.vim

call vundle#begin()

Plugin 'https://github.com/VundleVim/Vundle.vim' " let Vundle manage Vundle, required

" Color Scheme:
Plugin 'NLKNguyen/papercolor-theme'

" Pipe Command Line Output:
Plugin 'NLKNguyen/pipe.vim'

" Commonly Used Navigation Keymaps:
Plugin 'NLKNguyen/easy-navigate.vim'

" Natural Copy Cut Paste:
Plugin 'NLKNguyen/copy-cut-paste.vim'

" Common Settings:
Plugin 'NLKNguyen/common-settings.vim'


Plugin 'https://github.com/tpope/vim-unimpaired/'
Plugin 'https://github.com/tpope/vim-dispatch/'

Plugin 'https://github.com/mileszs/ack.vim'
nnoremap <C-s> :Ack 
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif


" Plugin 'https://github.com/scrooloose/syntastic'
"
Plugin 'https://github.com/scrooloose/nerdtree'
Plugin 'https://github.com/jistr/vim-nerdtree-tabs'

" Autoreload Vim Files: {{{
Plugin 'https://github.com/xolox/vim-misc'
Plugin 'https://github.com/xolox/vim-reload'
" }}}
"


" Front Page:
Plugin 'https://github.com/mhinz/vim-startify'


"Plugin 'https://github.com/ntpeters/vim-better-whitespace'
"highlight ExtraWhitespace ctermbg=None

" Text Surrounding:
Plugin 'https://github.com/tpope/vim-surround'

" Comment Toggling:
Plugin 'https://github.com/tpope/vim-commentary'


" Text Alignment:
Plugin 'junegunn/vim-easy-align'
"start interactive EasyAlign in visual mode (e.g. vip<Enter>)
vmap <Enter> <Plug>(EasyAlign)
" " Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)


" Source Code Outline Viewer:
Plugin 'https://github.com/majutsushi/tagbar'
" let g:tagbar_left=1
nnoremap <leader>t :TagbarOpen j<CR>
nnoremap <leader>T :TagbarToggle<CR>

" Fuzzy File Finder:
Plugin 'https://github.com/kien/ctrlp.vim'
let g:ctrlp_custom_ignore = 'node_modules\|bower_components\|docs\|DS_Store\|^.git$\|_site'

" Autoclosing Parens Brackets Quotes:
" Plugin 'https://github.com/Raimondi/delimitMate'

" Snippet: {{{
Plugin 'SirVer/ultisnips'
let g:UltiSnipsEditSplit="vertical"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
" if !exists("g:UltiSnipsJumpForwardTrigger")
"     let g:UltiSnipsJumpForwardTrigger = "<tab>"
" endif
" let g:UltiSnipsJumpBackwardTrigger="<backspace>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-h>"

" Snippets are separated from the engine. Add this if you want them:
Plugin 'honza/vim-snippets'
" }}}

" Nicer Lines: {{{
Plugin 'https://github.com/mkitt/tabline.vim'

Plugin 'https://github.com/bling/vim-airline'
let g:airline_powerline_fonts = 1
" let g:airline_extensions = ['tabline', 'ctrlp', 'tmuxline']
" let g:airline_theme='PaperColor-Dark'
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#ctrlp#enabled = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#hunks#enabled=1

Plugin 'https://github.com/edkolev/tmuxline.vim'
let g:airline#extensions#tmuxline#enabled = 1
" }}}

" Language Specific: {{{
"Plugin 'https://github.com/sterpe/vim-algol68'
" Plugin 'https://github.com/tfnico/vim-gradle'
Plugin 'https://github.com/NLKNguyen/c-syntax.vim'
Plugin 'https://github.com/elixir-lang/vim-elixir'
Plugin 'https://github.com/elzr/vim-json'

Plugin 'https://github.com/plasticboy/vim-markdown'
let g:vim_markdown_frontmatter=1

" Plugin 'https://github.com/tpope/vim-liquid'
" Plugin 'https://github.com/NLKNguyen/javascript_lodash.snippets'
" Plugin 'https://github.com/Superbil/llvm.vim'

Plugin 'https://github.com/NLKNguyen/vim-maven-syntax'
" Plugin 'https://github.com/artur-shaik/vim-javacomplete2'
" Plugin 'https://github.com/vim-jp/vim-java'
" Plugin 'https://github.com/mikelue/vim-maven-plugin'
" Plugin 'https://github.com/JalaiAmitahl/maven-compiler.vim'
" }}}

call vundle#end()            " required
filetype plugin indent on    " required
"====================== VUNDLE END ===========================

syntax on

"set background=dark
set t_Co=256 "use 256-color terminal setting
colorscheme PaperColor

set filetype=unix

set foldmethod=marker " preferred folding method
set foldlevelstart=20

set timeout timeoutlen=1000 ttimeoutlen=-1 " Fast escape response
let mapleader=','


set nowrap " No Word Wrapping
set noswapfile " No Backup: .swap files can be annoying

set expandtab "use spaces for tab
set tabstop=2 "a tab == 2 spaces
set shiftwidth=2 "spaces for autoindenting

vmap @ :normal @
nmap ; :<up>

nnoremap QQ :copen<CR>
" Quicker way to save file
nmap <leader><leader> :update <CR>


" Open NERDTree File Browser:
"nnoremap <space>- :NERDTreeToggle<CR>
nnoremap <space>- :NERDTreeTabsToggle<CR>
let g:nerdtree_tabs_open_on_gui_startup=0
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" Open Terminal Here:
nnoremap <space>t :Start<CR>

" Set Working Directory To Here:
nnoremap <space>d :cd %:p:h<CR>

" Show Full Path To Here:
nnoremap <space>? :echo expand("%:p")<CR>

" Toggle Line Number:
nnoremap <space>n :set number!<CR>

" Toggle Word Wrapping:
nnoremap <space>w :set wrap!<CR>

" Toggle Listing Whitespaces:
nnoremap <space>l :set list!<CR>

" Toggle Spelling Checking:
nmap <space>s :setlocal spell! spell?<CR>

" Turn Off Search Highlighting:
nmap <space>h :nohl<CR>





nmap <leader>ev :e $MYVIMRC<CR>
nmap <leader>sv :update <bar> so $MYVIMRC<CR>


map <leader>eld :e ~/.vim/bundle/javascript_lodash.snippets/Ultisnips/javascript_lodash.snippets<CR>
map <leader>es :e ~/.vim/bundle/common-settings.vim/plugin/common-settings.vim<CR>
" For color scheme editing
map <leader>ec :e ~/.vim/bundle/papercolor-theme/colors/PaperColor.vim<CR>
map <leader>sc :update <bar> color PaperColor<CR>
map <bslash>g :h group-name<CR>
map <bslash>h :so $VIMRUNTIME/syntax/hitest.vim<CR>
map <silent> <bslash>c :redir @c <bar> echo 'call s:HL("' .  synIDattr(synID(line("."),col("."),1),"name") .
      \ '", s:foreground, "", "")' <bar>redir END<CR>
map <bslash>p "cp<CR>

" For Java
" function! s:MKDir(...)
"   if !a:0 
"         \|| stridx('`+', a:1[0])!=-1
"         \|| a:1=~#'\v\\@<![ *?[%#]'
"         \|| isdirectory(a:1)
"         \|| filereadable(a:1)
"         \|| isdirectory(fnamemodify(a:1, ':p:h'))
"     return
"   endif
"   return mkdir(fnamemodify(a:1, ':p:h'), 'p')
" endfunction
" command! -bang -bar -nargs=? -complete=file E :call s:MKDir(<f-args>) | e<bang> <args>





" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*

" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0

" Runner:
autocmd FileType java nnoremap <leader>rr :update <bar> Start -wait=always javac % && java %:r<CR>
autocmd FileType algol68 nnoremap <leader>rr :update <bar> Start -wait=always a68g %<CR>
autocmd FileType lisp nnoremap <leader>rt :update <bar> Start -wait=always clisp %<CR>
autocmd FileType lisp nnoremap <leader>rr :update <bar> call g:Pipe('clisp ' . expand('%:p'))<CR>
autocmd FileType prolog nnoremap <leader>rr :update <bar> Start -wait=always swipl -s %<CR>
