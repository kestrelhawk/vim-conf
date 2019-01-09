if has('win32')
    let $PATH .= ';' . 'C:\Users\kevin\AppData\Local\Atlassian\SourceTree\git_local\'
endif

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

" Plugins will be downloaded under the specified directory.
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'tpope/vim-sensible'
Plug 'kien/ctrlp.vim'
Plug 'altercation/vim-colors-solarized'
Plug 'joonty/vdebug'
Plug 'scrooloose/nerdcommenter'
Plug 'junegunn/fzf'
Plug 'junegunn/goyo.vim'
Plug 'itchyny/lightline.vim'
"Plug 'vim-scripts/taglist.vim'
Plug 'majutsushi/tagbar'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

syntax enable
let g:solarized_termcolors=256
set background=light
colorscheme solarized
filetype plugin on

" Cursor
set guicursor=n-v-c-i:block-Cursor
set guicursor+=n-v-c-i:blinkon0
"highlight iCursor guifg=white guibg=steelblue "update colour of i-mode cursor
set guioptions-=m  "remove menu bar
set guioptions-=T  "remove toolbar
set guioptions-=r  "remove right-hand scroll bar
set guioptions-=L  "remove left-hand scroll bar

" Fonts
if has("gui_running")
  if has("gui_gtk2") || has("gui_gtk3")
    set guifont=Monospace 10
  elseif has("gui_photon")
    set guifont=Monospace:s10
  elseif has("gui_kde")
    set guifont=Courier\ New/11/-1/5/50/0/0/0/1/0
  elseif has("x11")
    set guifont=-*-courier-medium-r-normal-*-*-180-*-*-m-*-*
  else
    set guifont=Courier_New:h11:cDEFAULT
  endif
endif

" General
set number

" Keyboard Shortcuts
nmap <F8> :TagbarToggle<CR>
