############################################
# => bashrc
############################################

# source global definitions
if [ -f /etc/bashrc ]; then . /etc/bashrc
fi

# vi mode
set -o vi

# ignore case 
bind 'set completion-ignore-case on'

# startup msg
# echo "TODO DON'T DISMISS THIS MF"
# echo '1 CHECK REQUIRED A DAY'
# cat ~/Projects/TODO

############################################
# => environment variables
############################################
# user specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]
then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi

# use xwayland firefox
# export MOZ_DISABLE_WAYLAND=1

# r packages library
if [ -n $R_LIBS ]; then
  export R_LIBS=~/.Rlibs:$R_LIBS
else
  export R_LIBS=~/.Rlibs
fi

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

# go
# export GOPATH=/home/rmrt1n/Projects/

# aws eb cli
export PATH="/home/rmrt1n/.ebcli-virtual-env/executables:$PATH"

############################################
# => aliases
############################################
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
alias vimrc='vim ~/.vimrc'

# flatpak aliases
alias wa='flatpak run com.gigitux.gtkwhats'
alias teams='flatpak run com.microsoft.Teams'
alias discord='flatpak run com.discordapp.Discord'
alias gnome-boxes='flatpak run org.gnome.Boxes'

# more sane program defaults
alias wget='wget -c'
alias bc='bc -l'
alias ping='ping -c 5'
alias less='less -FiN --mouse'
alias tree='tree --dirsfirst'
alias tshark='tshark --color'
alias du='du -hc'
alias objdump='objdump -M intel'

# utils
alias doc2txt='libreoffice --headless --convert-to "txt:Text (encoded):UTF8" $@'
alias rmnl='sed -i "/^$/d"'
alias jsonfmt='python3 -m json.tool'

# podman docker cmd compatibility and shortcuts
# alias docker='podman'
# alias docker-compose='podman-compose'
alias up='podman-compose up'
alias down='podman-compose down'
alias d='docker'
alias p='podman'

# containers shortcut
alias vol='podman run --rm -it --privileged -v .:/data blacktop/volatility'
alias john='podman run --rm -it -v .:/root:z john'
alias steghide='podman run --rm -it -v .:/root:z steghide'
alias msfconsole='podman run --privileged --rm -it -p 4444:4444 metasploit-framework'
alias bulk_extractor='podman run --privileged --rm -v .:/root bulk-extractor'
alias rip.pl='podman run --privileged --rm -v .:/data:ro regripper'
alias one_gadget='podman run --rm -it -v .:/root one_gadget'

# dev aliases
alias venv='python3 -m venv venv'
alias activate='source venv/bin/activate'
alias r='radian'
alias rs='Rscript'
alias gil='guile -s'
alias py='python3'
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
alias gf='git fetch'
alias ggpull='git pull origin $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias ggpush='git push origin $(git branch | sed -n -e "s/^\* \(.*\)/\1/p")'
alias gl='git pull'
alias glg='git log --graph --decorate --all'
alias glo='git log --oneline --decorate'
alias glol='git log --graph --pretty='\''%Cred%h%Creset -%C(auto)%d%Creset %s %Cgreen(%ar) %C(bold blue)<%an>%Creset'\'
alias gm='git merge'
alias gp='git push'
alias grh='git reset'
alias grhh='git reset --hard'
alias grhs='git reset --soft'
alias grm='git rm'
alias gst='git status'
alias gsta='git stash push'
alias gstaa='git stash apply'
alias gstp='git stash pop'
alias gcl='git clone --recurse-submodules'
alias gd='git diff'
alias gdr='git diff HEAD~1'
alias grb='git rebase'

# terraform aliases
alias tf='terraform'
alias tfi='terraform init'
alias tfv='terraform validate'
alias tfp='terraform plan'
alias tfa='terraform apply'
alias tfd='terraform destroy'
alias tff='terraform fmt'
alias tfs='terraform show'

# distro specific aliases
alias uu='sudo dnf upgrade && flatpak update'
alias arm='sudo dnf autoremove && flatpak remove --unused'
alias clean='dnf clean all; sudo dnf clean all'
alias lll='dnf list --installed | less' 

# shortcuts
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias dw='cd ~/Downloads'
alias doc='cd ~/Documents'
alias c='clear'
alias cler='clear'
alias q='exit'
alias ta='tmux attach'
alias m='source ~/.bashrc; clear'
alias ctf='cd ~/CTF'
alias rmrf='rm -rf'
alias xxdrp='xxd -r -p'

