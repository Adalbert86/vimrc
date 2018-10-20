" copy to root vimrc 
" source ~/.vim/myvimrc.vim
"
colorscheme industry
set number

" unmap the arrow keys
" no <down> <Nop>
" no <left> <Nop>
" no <right> <Nop>
" no <up> <Nop>
" ino <down> <Nop>
" ino <left> <Nop>
" ino <right> <Nop>
" ino <up> <Nop>

syntax on
filetype indent plugin on

" from https://github.com/jpo/vim-railscasts-theme
" set runtimepath+=~/.vim/colors/railcast.vim
" source ~/.vim/colors/railcast.vim

" Map Save on CTRL+S, note I had to make a change in .bash_profile for that as
" well
nmap <c-s> :w<CR>
imap <c-s> <Esc>:w<CR>a

" Activate NerdTree plugin
set runtimepath+=~/.vim/bundle/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <C-n> :NERDTreeToggle<CR>

