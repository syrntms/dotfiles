alias ss="source ~/.zprofile"
alias v='vim'
alias g='git'
alias grep='grep --color=always'
alias grep_nocolor='grep --color=auto'
alias dib='docker image build . -t '
alias dil='docker images '
alias dirm='docker rmi '
alias dcr='docker run '
alias dcrm='docker rm '
alias dcps='docker ps -a '
alias dspr='docker system prune -a '

ssh-add ~/.ssh/id_rsa
eval "$(anyenv init -)"
