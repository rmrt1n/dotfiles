# .bashrc

# source global definitions
if [ -f /etc/bashrc ]; then . /etc/bashrc
fi

# user specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# use xwayland firefox
# export MOZ_DISABLE_WAYLAND=1

# r packages library
# if [ -n $R_LIBS ]; then
#   export R_LIBS=~/.Rlibs:$R_LIBS
# else
#   export R_LIBS=~/.Rlibs
# fi

# vi mode
set -o vi

# ignore case 
bind 'set completion-ignore-case on'

# change default editor to vim
export EDITOR=/usr/bin/vim

# chibi scheme
export LD_LIBRARY_PATH=/usr/local/lib

# openjdk 11 and ghidra
# export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-11.0.9.11-0.fc32.x86_64/
export JAVA_HOME=/usr/lib/jvm/java-11/
export PATH=$PATH:$JAVA_HOME/bin

# gradle
export PATH=$PATH:/home/rmrt1n/.local/gradle-6.9.1/bin
# mssql server tools
# export PATH="$PATH:/opt/mssql-tools/bin"

# global node modules
export PATH=$PATH:/home/rmrt1n/.node_modules_global/bin

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
alias less='less -FiN --mouse'
alias tree='tree --dirsfirst'
alias whatsapp='flatpak run com.gigitux.gtkwhats'
# alias teams='flatpak run com.microsoft.Teams'
alias discord='flatpak run com.discordapp.Discord'
alias gnome-boxes='flatpak run org.gnome.Boxes'
alias tshark='tshark --color'
# alias du='du -hc -d 2 --time'
alias objdump='objdump -M intel'
alias doc2txt='libreoffice --headless --convert-to "txt:Text (encoded):UTF8" $@'
alias rmnl='sed -i "/^$/d"'

# containers
alias docker='podman'
alias docker-compose='podman-compose'
alias up='podman-compose up'
alias down='podman-compose down'

# containerized programs
alias vol='podman run --rm -it --privileged -v .:/data blacktop/volatility'
alias john='podman run --rm -it -v .:/root:z john'
alias steghide='podman run --rm -it -v .:/root:z steghide'
alias msfconsole='podman run --privileged --rm -it -p 4444:4444 metasploit-framework'
alias bulk_extractor='podman run --privileged --rm -v .:/root bulk-extractor'
alias rip.pl='podman run --privileged --rm -v .:/data:ro regripper'
alias one_gadget='podman run --rm -it -v .:/root one_gadget'
# alias chibi=chibi
function chibi() {
    if [[ $# -eq 0 ]]; then
        chibi-scheme -R -m chibi.match
    else
        chibi-scheme $@
    fi
}

# dev aliases
alias venv='python3 -m venv venv'
alias activate='source venv/bin/activate'
alias r='radian'
alias rs='Rscript'
alias cmake='clear;make'
alias gil='guile -s'
alias py='python3'
alias jsonfmt='python3 -m json.tool'
alias jn='jupyter notebook'
alias config='git --git-dir=$HOME/dotfiles/ --work-tree=$HOME'
alias dev='tmuxp load dev'

# git aliases
alias g='git'
alias ga='git add'
alias gaa='git add --all'
alias gb='git branch'
alias gba='git branch -a'
alias gc='git commit -v'
alias gcm='git commit -m'
alias gcb='git checkout -b'
alias gco='git checkout'
alias ggpull="git pull origin $(git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
alias ggpush="git push origin $(git branch | sed -n -e 's/^\* \(.*\)/\1/p')"
alias gl='git pull'
alias glg='git log --graph --decorate --all'
alias glo='git log --oneline --decorate'
alias gm='git merge'
alias gp='git push'
alias grh='git reset'
alias grhh='git reset --hard'
alias grm='git rm'
alias gst='git status'
alias gsta='git stash push'
alias gstaa='git stash apply'
alias gstp='git stash pop'

# distro specific aliases
alias uu='sudo dnf upgrade && flatpak update'
alias arm='sudo dnf autoremove && flatpak remove --unused'
alias clean='dnf clean all; sudo dnf clean all'
alias lll='dnf list --installed | less' 

# other shortcuts
alias ..='cd ..'
alias wtf='man'
alias tags='getfattr -d *'
alias dw='cd ~/Downloads'
alias doc='cd ~/Documents'
alias c='clear'
alias cler='clear'
alias q='exit'
alias ta='tmux attach'
alias m='source ~/.bashrc; clear'
alias ctf='cd ~/CTF'
alias rmrf='rm -rf'
alias news='newsboat'

# export GOPATH=/home/rmrt1n/Projects/
