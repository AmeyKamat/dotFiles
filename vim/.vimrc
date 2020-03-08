noremap <Up> <Nop>
noremap <Down> <Nop>
noremap <Left> <Nop>
noremap <Right> <Nop>
noremap <PageUp> <Nop>
noremap <PageDown> <Nop>

inoremap jk <esc>

tnoremap jk <C-\><C-n>

nmap <f7> :NERDTreeToggle<CR>


filetype plugin indent on
syntax on
set encoding=utf-8
set clipboard=unnamedplus

set modelines=0
set number
set wildmenu
set autochdir
set tabstop=4 shiftwidth=4 expandtab

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%#LineNr#
set statusline+=\ %F
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\ 

call plug#begin('~/.vim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'preservim/nerdtree'
call plug#end()

let g:ctrlp_custom_ignore = {
  \ 'dir':  '\.git$\|\.m2\|public$|log\|tmp$\|node_modules\|target\|build\|\.idea',
  \ 'file': '\.so$\|\.dat$|\.DS_Store$\|\.woff$\|\.svg$\|\.snap.js$\|\.png$\|\.ttf$\|\.woff$\|\.eot$\|\.jpg$'
  \ }
"let g:ctrlp_user_command = 'grep %s --color=never' 
"let g:ctrlp_user_command = 'find . -regex %s'
