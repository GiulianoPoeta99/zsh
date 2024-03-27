# Creado por nuevo usuario para la versión 5.9
# Configuración de zsh

# Utiliza los atajos de teclado de emacs incluso si nuestro EDITOR está configurado en vi
bindkey -e

# Mantiene 1000 líneas de historial dentro de la shell y lo guarda en ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE="$XDG_STATE_HOME"/zsh/history

# Utiliza el sistema de autocompletado moderno
autoload -Uz compinit
compinit

# Configuración del sistema de autocompletado
# Define cómo se completan automáticamente los comandos y otras entradas en la terminal.

# Define la descripción automática para las opciones de autocompletado
zstyle ':completion:*' auto-description 'especificar: %d'

# Define los completadores que se utilizarán para las opciones de autocompletado
zstyle ':completion:*' completer _expand _complete _correct _approximate

# Define el formato del mensaje que se muestra durante el autocompletado
zstyle ':completion:*' format 'Completando %d'

# Define el nombre del grupo para las opciones de autocompletado (no se utiliza en este caso)
zstyle ':completion:*' group-name ''

# Configura el menú de autocompletado para que muestre hasta 2 opciones
zstyle ':completion:*' menu select=2

# Evalúa el resultado de `dircolors` y lo utiliza para colorear las opciones de autocompletado
eval "$(dircolors -b)"

# Define los colores para las opciones de autocompletado basados en la variable LS_COLORS
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''

# Define el mensaje que se muestra cuando se muestra el menú de autocompletado
zstyle ':completion:*' list-prompt %SEn %p: Presiona TAB para más opciones, o el caracter a insertar%s

# Define los criterios de coincidencia para las opciones de autocompletado
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[-_.]=* r:|=* l:|=*'

# Configura el menú de autocompletado para que tenga un comportamiento de desplazamiento largo
zstyle ':completion:*' menu select=long

# Define el mensaje que se muestra cuando se selecciona una opción en el menú de autocompletado
zstyle ':completion:*' select-prompt %SScrolling activo: selección actual en %p%s

# Desactiva el uso de compctl para el autocompletado
zstyle ':completion:*' use-compctl false

# Activa la salida detallada durante el autocompletado
zstyle ':completion:*' verbose true

# Configura los colores para las opciones relacionadas con matar procesos
zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'


# ********************************************************************************************************************

# Movimiento de palabra hacia la izquierda con Control + flecha izquierda
bindkey '^[[1;5D' backward-word

# Movimiento de palabra hacia la derecha con Control + flecha derecha
bindkey '^[[1;5C' forward-word


# ********************************************************************************************************************
# Se deben copiar todas las variables que no sean de bash en el archivo /etc/zsh/zshenv
# Los alias están separados en diferentes archivos dependiendo del comando y están centralizados en el archivo alias

# Alias
source "$XDG_CONFIG_HOME"/zsh/alias/alias.zsh

# Autojump
[[ -s /home/gpoeta/.autojump/etc/profile.d/autojump.sh ]] && source /home/gpoeta/.autojump/etc/profile.d/autojump.sh

# Thefuck
eval $(thefuck --alias)

# Color man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"

# Plugins
source /home/gpoeta/.repos/zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/gpoeta/.repos/zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/sudo/sudo.plugin.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/command-not-found/command-not-found.plugin.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/extract/extract.plugin.zsh
source /home/gpoeta/.repos/zsh/ohmyzsh/plugins/colorize/colorize.plugin.zsh

# Configuración de Brew
eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv)"

# Prompt Starship
eval "$(starship init zsh)"
