# Created by newuser for 5.9
# config zsh

# Use emacs keybindings even if our EDITOR is set to vi
bindkey -e

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$XDG_STATE_HOME"/zsh/history

# Use modern completion system
autoload -Uz compinit
compinit

zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# ********************************************************************************************************************
# hay que copiar todas las variables que no sean de bash en el archivo /etc/zsh/zshenv
# los aliases estan separados en diferentes archivos dependiendo cual comando es y est centralizado en el archivo alias

# hacemos un fetch al iniciar una shell
neofetch

# Aliases
source "$XDG_CONFIG_HOME"/zsh/alias/alias.zsh

# autojump
[[ -s /home/gpoeta/.autojump/etc/profile.d/autojump.sh ]] && source /home/gpoeta/.autojump/etc/profile.d/autojump.sh

# thefuck
eval $(thefuck --alias)

# color man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# plugins
source /home/gpoeta/.repos/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/gpoeta/.repos/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/sudo/sudo.plugin.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/command-not-found/command-not-found.plugin.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/extract/extract.plugin.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/colorize/colorize.plugin.zsh

eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# prompt starship
eval "$(starship init zsh)"
