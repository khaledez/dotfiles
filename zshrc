# Load required mods
autoload -U compaudit compinit promptinit

# case-insensitive completion
compinit
zmodload -i zsh/complist
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'

# pure prompt theme
# it needs to be installed first;
# npm install -g pure-prompt
promptinit
prompt pure

# brew
if [[ `uname` == 'Darwin' ]]; then
  alias brewp='brew pin'
  alias brews='brew list -1'
  alias brewsp='brew list --pinned'
  alias bubo='brew update && brew outdated'
  alias bubc='brew upgrade && brew cleanup'
  alias bubu='bubo && bubc'

  export PATH=/usr/local/sbin:$PATH
fi

# Syntax hightlighting
# Install it first:
# Mac: brew install zsh-syntax-hightlighting
# Ubuntu: sudo apt install zsh-syntax-highlighting
if [[ `uname` == 'Darwin' ]]; then
  source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Docker
alias dc="docker-compose"
alias dcup="docker-compose up -d"

# rbenv
eval "$(rbenv init -)"
