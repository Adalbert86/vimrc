# see
# http://bashrcgenerator.com/

export PS1="\h\[$(tput sgr0)\]\[\033[38;5;4m\]:\[$(tput sgr0)\]\[\033[38;5;15m\]\W \u\[$(tput sgr0)\]\[\033[38;5;4m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"
#export PS1="\h\[$(tput sgr0)\]\[\033[38;5;11m\]:\[$(tput sgr0)\]\[\033[38;5;15m\]\W \u\[$(tput sgr0)\]\[\033[38;5;11m\]\\$\[$(tput sgr0)\]\[\033[38;5;15m\] \[$(tput sgr0)\]"

alias ll='ls -l'
alias la='ls -la'
alias lla='la'

alias pdflatex='/usr/local/texlive/2017/bin/x86_64-darwin/pdflatex'
alias latex='/usr/local/texlive/2017/bin/x86_64-darwin/latex'

# to be able to map ctrl+s for saving files in VIM
# we have to disable that here
bind -r '\C-s'
stty -ixon
