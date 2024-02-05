
# Global Order .zshenv, zprofile, zshrc, zlogin

if [[ -z "$XDG_CONFIG_HOME" ]]; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi

if [[ -d "$XDG_CONFIG_HOME/zsh" ]]; then
    export ZDOTDIR="$XDG_CONFIG_HOME/zsh"
    export ZSH_CUSTOM="$XDG_CONFIG_HOME/zsh"
fi
