# If not running interactively, don't do anything
case $- in
    *i*) ;;
      *) return;;
esac

case "$TERM" in
    xterm-color) color_prompt=yes;;
esac

case "$TERM" in
xterm*|rxvt*)
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]$PS1"
    ;;
*)
    ;;
esac

if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

if ! shopt -oq posix; then
  if [ -f /usr/share/bash-completion/bash_completion ]; then
    . /usr/share/bash-completion/bash_completion
  elif [ -f /etc/bash_completion ]; then
    . /etc/bash_completion
  fi
fi

if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

PATH=$PATH:/bin:/sbin:/usr/bin:/usr/sbin:/usr/local/bin:/usr/local/sbin:/local/bin:/local/sbin:/usr/libexec:$HOME/bin:/usr/openv/netbackup/bin:/home/lukep/bin

trap '. $HOME/.bash_logout; exit' 0

shopt -s checkwinsize
shopt -s histappend
HISTCONTROL=ignoreboth
export HISTSIZE=5000
export HISTFILESIZE=5000
export PROMPT_COMMAND=`history -a; history -n`

alias rm='rm -i'
alias cp='cp -i'
alias mv='mv -i'
alias mkdir='mkdir -p'
alias ll='ls -al'
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias clock='tty-clock -c -C3'
alias lock='mate-screensaver-command --lock'

WHO=$(whoami)
OS=$(uname -sr)

ARCH=$(getconf LONG_BIT)
ROOT="root"
UCOLOR="\[\033[1;34m\]"
HCOLOR="\[\033[1;32m\]"
NC="\[\033[0m\]"
OSCOLOR="\[\033[0;37m\]"
WDCOLOR="\[\033[1;31m\]"
TCOLOR="\[\033[1;32m\]"
UCOLOR="\[\033[1;34m\]"

if [ "$WHO" == "$ROOT" ]
then
   UCOLOR="\[\033[1;37;41m\]"
   PS1="$UCOLOR\u at \h in \w $NC \n\t >$NC "
else
   #PS1="$UCOLOR\u$NC@$HCOLOR\h$NC $OSCOLOR[$OS $ARCH]$NC $WDCOLOR\w$NC \n$HCOLOR\t >$NC "
   PS1="$UCOLOR\u$NC at $HCOLOR\h$NC in $WDCOLOR\w$NC\n$HCOLOR\t >$NC "
fi

export MYSQL_PS1="[\U]-[\d]-[\R:\m:\s]-[\c]\n> "
export MOZILLA_FIVE_HOME=/usr/lib/mozilla
