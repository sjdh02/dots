call plug#begin('~/.vim/plugged')

Plug 'junegunn/seoul256.vim'
Plug 'airblade/vim-gitgutter'
Plug 'ziglang/zig.vim'
Plug 'scrooloose/nerdtree'
Plug 'rust-lang/rust.vim'
Plug 'itchyny/lightline.vim'
Plug 'justinmk/vim-sneak'
Plug 'vim-syntastic/syntastic'
Plug 'morhetz/gruvbox'
Plug 'plasticboy/vim-markdown'

call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark='hard'
set background=dark

map <C-n> :NERDTreeToggle<CR>

map f <Plug>Sneak_s
map F <Plug>Sneak_s

set laststatus=2
set noshowmode
let g:lightline = {
      \ 'colorscheme': 'gruvbox',
      \ }

let g:rustfmt_autosave=1

set hidden

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
