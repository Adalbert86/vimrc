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
" set runtimepath+=~/.vim/bundle/nerdtree
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" map <C-n> :NERDTreeToggle<CR>

command Q q
cmap Q! q!

" Activate VIM Fugitive (GIT support)
set runtimepath+=~/.vim/bundle/vim-fugitive
set laststatus=2
" set statusline=%{FugitiveStatusline()}

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatuslineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0?'  '.l:branchname.' ':''
endfunction

set statusline=
set statusline+=%#PmenuSel#
set statusline+=%{StatuslineGit()}
set statusline+=%#LineNr#
set statusline+=\ %f
set statusline+=%m\
set statusline+=%=
set statusline+=%#CursorColumn#
set statusline+=\ %y
set statusline+=\ %{&fileencoding?&fileencoding:&encoding}
set statusline+=\[%{&fileformat}\]
set statusline+=\ %p%%
set statusline+=\ %l:%c
set statusline+=\


set runtimepath+=~/.vim/bundle/vim-gitgutter
" GitGutterEnable
" GitGutterSignsEnable

set runtimepath+=~/.vim/bundle/deoplete-nvim
" Use deoplete.
let g:deoplete#enable_at_startup = 1

set runtimepath+=~/.vim/bundle/vim-hug-neovim-rpc
set runtimepath+=~/.vim/bundle/nvim-yarp
set runtimepath+=~/.vim/bundle/deoplete-nvim

