$ cat ~/.bash_profile
if [ -f ~/.bashrc ] ; then
. ~/.bashrc
fi

export PAGER=`which less`
export LESSCHARSET="utf-8"
export LESS=-ReiM
export LANG="ja_JP.UTF-8"
export PATH="$HOME/.rbenv/bin:$PATH"
export PS1="[\u@\h \W]\\$ "
export LSCOLORS=gxfxcxdxbxegedabagacad
export EDITOR="vim"
export HISTTIMEFORMAT='%y/%m/%d %H:%M:%S '
export HISTSIZE='100000'
export HISTIGNORE='ls:history:&:history '
