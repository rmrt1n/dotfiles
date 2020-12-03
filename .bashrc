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

# use xwayland firefox
export MOZ_DISABLE_WAYLAND=1

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

# change default editor to vim
export EDITOR=/usr/bin/vim

# openjdk 11 and ghidra
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.9.11-0.fc32.x86_64/
export PATH=$PATH:$JAVA_HOME/bin

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
alias whatsapp='flatpak run com.gigitux.gtkwhats'
alias teams='flatpak run com.microsoft.Teams'
alias discord='flatpak run com.discordapp.Discord'
alias gnome-boxes='flatpak run org.gnome.Boxes'
alias tshark='tshark --color'
alias du='du -hc -d 2 --time'
alias objdump='objdump -M intel'
alias doc2txt='libreoffice --headless --convert-to "txt:Text (encoded):UTF8" $@'

# containers
alias docker='podman'
alias vol='podman run --rm -it --privileged -v .:/data docker.io/blacktop/volatility'
alias john='podman run --rm -it -v .:/root:z localhost/john'
alias steghide='podman run --rm -it -v .:/root:z localhost/steghide'

# dev aliases
alias geet='sudo cat ~/.etc/.geet && git push origin master'
alias venv='python3 -m venv venv'
alias activate='source venv/bin/activate'
alias r='radian'
alias rs='Rscript'
alias cmake='clear;make'
alias gil='guile -s'
alias py='python3'
alias jsonfmt='python3 -m json.tool'

# distro specific aliases
alias uu='sudo dnf upgrade && flatpak update'
alias arm='sudo dnf autoremove && flatpak remove --unused'
alias clean='dnf clean all; sudo dnf clean all'
alias lll='dnf list --installed | less' 

# other shortcuts
alias ..='cd ..'
alias dw='cd ~/Downloads'
alias c='clear'
alias cler='clear'
alias q='exit'
alias ta='tmux attach'
alias m='source ~/.bashrc; clear'
alias submit='exercism submit'
alias conn='ssh -Y mion@127.0.0.1 -p 2222'
alias ctf='cd ~/CTF'

