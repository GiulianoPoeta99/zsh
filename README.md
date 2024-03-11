# ZSH

## Dependencias

- nala (solo para ubuntu)
- bash-completitions (solo para arch)
- fzf
- autojump
- fuck
- eza
- docker
- docker-compose
- lazydocker
- git
- lazygit
- pygments/chroma
- neofecth
- bat
- navi

## Instalación

### Para Ubuntu

```bash
sudo apt update
sudo apt install zsh
```

### Para Arch

```bash
sudo pacman -Syu
sudo pacman -S zsh
```

### Para MacOS

Esto **ya viene nativamente**

```bash
brew update
brew install zsh
```

## Configurar como predeterminada

recomendable **usar el comando which**

### ZSH para Ubuntu

```bash
chsh -s $(which zsh)
```

### ZSH para Arch

```bash
chsh -s /bin/zsh
```

### ZSH para MacOS

```bash
chsh -s /usr/local/bin/zsh
```

Luego de esto **hay que reiniciar**

## Instalación de NerdFont

### Referencia

[NerdFont GitHub](https://github.com/ryanoasis/nerd-fonts#option-1-download-and-install-manually)

La instalacion que yo realice es entrando especificamente al repositorio de la fuente que queria usar, es mucho mas facil econtrar la forma de la instalacion dependiendo de que S.O. estes usando.

Ejemplo **instalando Firacode**

### NerdFont para Ubuntu

```bash
# es posible que haya que acivar el repo universe
sudo apt install fonts-firacode
```

### NerdFont para Arch

```bash
# con pacman
sudo pacman -S ttf-fira-code

# con yay
yay -S ttf-fira-code
```

### NerdFont para MacOS

```bash
brew tap homebrew/cask-fonts
brew install --cask font-fira-code
```

Hay que **tener cuidado en donde copiamos los repos**

## Prompt

### Prompt PowerLevel10k

#### Referencia PowerLevel10k

[PowerLevel10k](https://github.com/romkatv/powerlevel10k/tree/master)

#### Instalación PowerLevel10k

```bash
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git
echo 'source ~/powerlevel10k/powerlevel10k.zsh-theme' >>~/.zshrc
```

#### Configuración PowerLevel10k

Al instalarlo e iniciar una shell te deja configurarlo, **en caso contrario hay que ejecutar lo siguiente**

```bash
p10k configure
```

### Prompt starship

#### Referencia starship

[Starship](https://starship.rs/)

#### Instalación starship

```bash
curl -sS https://starship.rs/install.sh | sh
```

**Agregamos al final** de .zshrc lo siguiente

```bash
eval "$(starship init zsh)"
```

#### Configuración starship

##### Referencia configuración starship

[Configuration](https://starship.rs/config/#prompt)
[Presets](https://starship.rs/presets/)

## Plugins

### Más plugins de Oh My ZSH

[Oh My Zsh](https://github.com/ohmyzsh/ohmyzsh/wiki/Plugins)

### Color sintaxis

#### Referencia Syntax Highlighting

[Syntax Highlighting](https://github.com/zsh-users/zsh-syntax-highlighting/blob/master/INSTALL.md)

```bash
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
echo "source ${(q-)PWD}/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
source ./zsh-syntax-highlighting/zsh-syntax-highlighting.zsh 
```

### Sugerencias automaticas

#### Referencia Autosuggestions

[Autosuggestions](https://github.com/zsh-users/zsh-autosuggestions/blob/master/INSTALL.md)

```bash
git clone https://github.com/zsh-users/zsh-autosuggestions
echo "source ${(q-)PWD}/zsh-autosuggestions/zsh-autosuggestions.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

### zsh-completions

#### Referencia zsh-completions

[zsh-completions](https://github.com/chitoku-k/fzf-zsh-completions)

### Plugins OhMyZsh

#### Referencia OhMyZsh

[OhMyZsh](https://github.com/ohmyzsh/ohmyzsh)

**No recomiendo** utilizar plugins de aliases

**Recomiendo** abrir el plugin en github y copiar el conteido en el .zshrc

```bash
git clone https://github.com/ohmyzsh/ohmyzsh.git 
cd .zsh/ohmyzsh/plugins
# aca se pueden ver todos los plugins de ohmyzsh

# luego cambiamos al plugin deseado, en este caso sudo y cd interactivo, hacemos esto
echo "source ${(q-)PWD}/sudo/sudo.plugin.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${(q-)PWD}/zsh-interactive-cd/zsh-interactive-cd.plugin.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${(q-)PWD}/command-not-found/command-not-found.plugin.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${(q-)PWD}/extract/extract.plugin.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
echo "source ${(q-)PWD}/colorize/colorize.plugin.zsh" >> ${ZDOTDIR:-$HOME}/.zshrc
```

##### Comandos que instale

1. Sudo.
2. Zsh Interactive cd
3. Command not found
4. extract
