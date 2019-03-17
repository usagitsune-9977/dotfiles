# Vim
alias v='vim'
alias nv='nvim'
alias nvimdiff='nvim -d'

# Ls
alias l='ls -lG'
alias la='ls -laG'
alias lat='ls -latG'

# Git
alias g='git'
alias -g gc='`git log --oneline --all | peco | cut -d" " -f1`'
alias -g gb='`git branch -a | peco | sed -e "s/^\*\s*//g"`'
alias -g gr='`git remote | peco`'
