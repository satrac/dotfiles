# ~/.bash_aliases

# keep things safe
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias ln='ln -i'

alias dotfiles='/usr/bin/git --git-dir=$HOME/.dotfiles/ --work-tree=$HOME'

alias em='emacs -nw'
alias dd='dd status=progress'

# human readable output
alias df='df -h'

# fix obvious typos
alias cd..='cd ..'
alias pdw="pwd"

#free
alias free='free -mt'

#colorize grep
alias grep='grep --color=auto'
alias egrep='egrep --color=auto'
alias fgrep='fgrep --color=auto'

#continue download
alias wget='wget -c'

#ps
alias ps="ps auxf"
alias psgrep="ps aux | grep -v grep | grep -i -e VSZ -e"

#merge new settings
alias merge='xrdb -merge ~/.Xresources'

#hardware info --short
alias hw="hwinfo --short"

#mounting the folder Public for exchange betsweeh host and guest on virtualbox
alias vbm="sudo mount -t vboxsf -o rw,uid=1000,gid=1000 Public /home/$USER/Public"

# dotfiles
alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"

