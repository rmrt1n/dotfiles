# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# r packages library
if [ -n $R_LIBS ]; then
  export R_LIBS=~/.Rlibs:$R_LIBS
else
  export R_LIBS=~/.Rlibs
fi

# vi mode
set -o vi

# ignore case 
bind 'set completion-ignore-case on'

# User specific aliases and functions
# ls aliases
alias ls='ls --color=auto'
alias l='ls -lh --group-directories-first'
alias ll='ls -AlhF --group-directories-first'
alias la='ls -AC --group-directories-first'
alias l.='ls -AlhFd --group-directories-first .*'

# more interactive file manipulation
alias mv='mv -v'
alias rm='rm -vI'
alias cp='cp -v'

# config file shortcuts
alias bashrc='vim ~/.bashrc'
# alias aliases='vim ~/.bash_aliases'
alias vimrc='vim ~/.vimrc'

# program aliases
alias wget='wget -c'
alias bc='bc -l'
alias ping='ping -c 5'
alias less='less -i -N'
alias tree='tree --dirsfirst'
alias wcl='wc -l'

# dev aliases
alias geet='sudo cat ~/.etc/.geet && git push origin master'
alias venv='python3 -m venv venv'
alias activate='source venv/bin/activate'
alias r='radian'
alias rs='Rscript'
alias cmake='clear;make'
alias gil='guile -s'
alias py='python3'
alias exec='./exec'

alias scc='./scc'

# distro specific aliases
alias uu='sudo dnf upgrade'
alias arm='sudo dnf autoremove'
alias clean='dnf clean all; sudo dnf clean all'
alias lll='dnf list --installed' 

# other shortcuts
alias ..='cd ..'
alias dw='cd ~/Downloads'
alias c='clear'
alias cler='clear'
alias q='exit'
alias ta='tmux attach'
alias m='source ~/.bashrc; clear'
alias submit='exercism submit'

