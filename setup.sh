#!/bin/bash

# run at your own risk!

realpath() {
    [[ $1 = /* ]] && echo "$1" || echo "$PWD/${1#./}"
}

link() {
    from="$1"
    to="$2"
    date=$(date '+%Y-%m-%d-%H%M')
    if [[ -e "$to" ]]; then
        echo "Making backup of '$to' to '$to.backup.$date'"
        mv -f "$to" "$to.backup.$date"
    fi
    echo "Linking '$from' to '$to'"
    ln -sf "$from" "$to"
}

# Get root
SCRIPT_PATH=`realpath $0`
DOTFILES=`dirname $SCRIPT_PATH`

# # install .icons
# mkdir -vp $HOME/.icons
# for file in $(find .icons -maxdepth 1 -type f -not -name .DS_Store -not -name .git | sort); do
#   link "$DOTFILES/$file" "$HOME/$file"
# done

# # Install .local/bin scripts
# mkdir -vp $HOME/.local/bin
# # install .local/bin
# for file in $(find .local/bin -maxdepth 1 -type f -not -name .DS_Store -not -name .git | sort); do
#   link "$DOTFILES/$file" "$HOME/$file"
# done

# # Install .local/share/application
# mkdir -vp $HOME/.local/share/applications
# for file in $(find .local/share/applications -maxdepth 1 -type f -not -name .DS_Store -not -name .git | sort); do
#   link "$DOTFILES/$file" "$HOME/$file"
# done

# # Install bin scripts
# mkdir -vp $HOME/bin
# # Install bin scripts
# for file in $(find bin -maxdepth 1 -type f -not -name .DS_Store -not -name .git | sort); do
#   link "$DOTFILES/$file" "$HOME/$file"
# done

# # Install .screenlayout dir
# link "$DOTFILES/.screenlayout" "$HOME/.screenlayout"

# # Install .Xresources.d dir
# link "$DOTFILES/.Xresources.d" "$HOME/.Xresources.d"

# Install .config files
# mkdir -vp $HOME/.config
# for file in $(find .config -maxdepth 1 -type f -not -name .git | sort); do
#   link "$DOTFILES/$file" "$HOME/$file"
# done

# # Install .config dirs
# for file in $(find .config -maxdepth 1 -type d -not -name .git -not -name .config | sort); do
#   link "$DOTFILES/$file" "$HOME/$file"
# done

# # Install all rest . dotfiles
# for location in $(find . -maxdepth 1 -type f -name ".*" -not -name .DS_Store -not -name .git | sed -e 's|//|/|' | sed -e 's|./.|.|' | sort); do
#   file="${location##*/}"
#   file="${file%.sh}"
#   link "$DOTFILES/$location" "$HOME/$file"
# done
