packadd minpac
call minpac#init()
call minpac#add('k-takata/minpac', {'type': 'opt'})
call minpac#add('tpope/vim-fugitive')
call minpac#add('fatih/vim-go', {'do': ':GoInstallBinaries'})
call minpac#add('AndrewRadev/splitjoin.vim') "support for gS and gJ
call minpac#add('elixir-editors/vim-elixir')
set nu

let $NVIM_TUI_ENABLE_TRUE_COLOR=1

syn on
set ruler
set incsearch
set number
set numberwidth=5
set showcmd
set hlsearch
set cmdheight=2
set laststatus=2
set autowrite
set expandtab
set visualbell
set list listchars=tab:>\ ,trail:-,extends:>,precedes:<,nbsp:+
map ; :

au Filetype go setlocal syntax=OFF

" go to the last edited position in file
au BufReadPost *
    \ if line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

" remove trailing spaces when saving
au BufWritePre *.rb :%s@\s\+$@@e
au BufWritePre *.yml :%s@\s\+$@@e
au BufWritePre *.js :%s@\s\+$@@e
au BufWritePre *.erb :%s@\s\+$@@e
au BufWritePre *.java :%s@\s\+$@@e

" settings for ruby files
au Filetype ruby setlocal ts=2 sts=2 sw=2 et
let mapleader=","
nnoremap <CR> :nohlsearch<cr>
imap jj <Esc>
cnoremap %% <C-R>=expand('%:h').'/'<cr>
map <leader>e :edit %%
map <leader>s :split %%
map <leader>v :vnew %%
map ,a ggVG
map <C-e> :b#<CR>

" puts the caller
nnoremap <leader>wat oputs "#" * 90<c-m>puts caller<c-m>puts "#" * 90<esc>

let g:go_fmt_command = "goimports"
imap <C-L> <space>=><space>
