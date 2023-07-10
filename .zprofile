if [ -f ~/.zshrc ] ; then
. ~/.zshrc
fi

export PAGER=`which less`
export LESSCHARSET="utf-8"
export LESS=-ReiM
export LANG="ja_JP.UTF-8"
export LSCOLORS=gxfxcxdxbxegedabagacad
export HISTTIMEFORMAT='%y/%m/%d %H:%M:%S '
export HISTSIZE='100000'
export HISTIGNORE='ls:history:&:history '
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$HOME/.goenv/bin:$PATH"


# Added by Toolbox App
export PATH="$PATH:/Users/noriyoshi.samata/Library/Application Support/JetBrains/Toolbox/scripts"

eval "$(/opt/homebrew/bin/brew shellenv)"

eval "$(goenv init -)"
eval "$(rbenv init -)"
eval "$(anyenv init -)"

export PATH=$(go env GOPATH)/bin:$PATH

ssh-add -K ~/.ssh/id_rsa
#setopt auto_cd

# Added by Toolbox App
export PATH="/usr/local/bin:$PATH"
export PATH="/usr/local/opt:/Applications/com.dena.dgpm/darwin-amd64/bin:$PATH"
