alias dlz='lazydocker'

alias dps='docker ps'

# Images
alias dimg='docker images'
alias drim='docker rmi'

# compose
alias dcd='docker compose down'
# no d
alias dcu='docker compose up'
alias dcr='docker compose down && docker compose up'
# d
alias dcud='docker compose up -d'
alias dcrd='docker compose down && docker compose up -d'

alias dexe='docker compose exec'

# enter container
dent() {
  docker compose exec -it "$1" bash
}