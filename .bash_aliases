# ~/.bash_aliases

DOTFILES=~/Repos/dotfiles
export DOTFILES

# dotfiles
#alias dotfiles="/usr/bin/git --git-dir=$HOME/.dotfiles --work-tree=$HOME"
alias dotfiles="git --git-dir=$DOTFILES --work-tree=$DOTFILES"

# keep things safe
alias cp='cp -i'
alias rm='rm -i'
alias mv='mv -i'
alias ln='ln -i'

# navigation
alias ..="cd .."
#alias ll='ls -alF'
#alias la='ls -A'
alias l='ls -F'
alias ls="lsd"
alias ll="lsd -l"
alias la="lsd -a"
alias lsla="lsd -la"
alias r="ranger"
alias copy="rsync -P"
alias cat="bat --style=plain"

# config edits
alias zconf="vim ~/.config/zsh/.zshrc"
alias bconf="vim ~/.bashrc"

alias em='emacs -nw'
alias dd='dd status=progress'

alias n='nvim'
alias v='vim'
# vimdiff mode
alias vd='v -d'
# open each file in tab
alias vp='v -p'
# open each file vertsplit
alias vo='v -O'
alias vv='v ~/.vimrc'

#alias code='codium'
alias t=tmux

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

#youtube
alias ytm="youtube-dl --extract-audio --audio-format mp3"
alias ytv="youtube-dl -f bestvideo+bestaudio"


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


alias sublime_text="/opt/sublime_text/sublime_text"

alias tabby="$HOME/Applications/tabby-1.0.206-nightly.0-linux-x64/tabby"

# emacs
alias customemacs="emacs --with-profile custom"
alias spacemacs="emacs --with-profile spacemacs"
alias doomemacs="emacs --with-profile doomemacs"
alias vanillaemacs="emacs --with-profile vanilla"

# flatpaks

alias ncspot="flatpak run io.github.hrkfdn.ncspot"
