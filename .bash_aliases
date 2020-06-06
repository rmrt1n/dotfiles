# ls aliases
alias ls='ls --color=auto'
alias l='ls -lh --group-directories-first'
alias ll='ls -AlhF --group-directories-first'
alias la='ls -AC'

# more interactive file manipulation
alias mv='mv -v'
alias rm='rm -vI'
alias cp='cp -v'

# config file shortcuts
alias bashrc='vim ~/.bashrc'
alias aliases='vim ~/.bash_aliases'
alias vimrc='vim ~/.vimrc'

# program aliases
alias wget='wget -c'
alias bc='bc -l'
alias pvpn='sudo protonvpn c -f'
alias pvpnd='sudo protonvpn d'
alias ping='ping -c 5'
alias less='less -i -N'

# dev aliases
alias stat='git status'
alias commit='git commit'
alias geet='sudo cat ~/.etc/.geet && git push origin master'
alias venv='python3 -m venv venv'
alias activate='source venv/bin/activate'
alias r='R --vanilla'
alias rs='Rscript'
alias rp='la ~/R/x86_64-pc-linux-gnu-library/3.4/'

# distro specific aliases
alias uu='sudo apt update && sudo apt upgrade -y'

# other shortcuts
alias cd..='cd ..'
alias dw='cd ~/Downloads'
alias c='clear'
alias cler='clear'
alias q='exit'
alias ta='tmux attach'
alias m='source ~/.bashrc; clear'
