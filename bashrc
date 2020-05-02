# bashrc addons

# vi mode
set -o vi
# cd ignore case
bind 'set completion-ignore-case on'

# aliases
# ls aliases
alias ls='ls -l --color=auto'
alias ll='ls -Alh'
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

# distro specific aliases
alias uu='sudo apt update && sudo apt upgrade'
alias uu='sudo dnf upgrade'

# other shortcuts
alias cd..='cd ..'
alias dw='cd ~/Downloads'
alias c='clear'
alias q='exit'
alias ta='tmux attach'

