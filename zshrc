# Load required mods
autoload -U compaudit compinit

# case-insensitive completion
compinit
zmodload -i zsh/complist
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'

# brew
if [[ `uname` == 'Darwin' ]]; then
  alias bubu="brew update; and brew outdated; and brew upgrade; and brew cleanup"
fi

# Syntax hightlighting
# Install it first:
# Mac: brew install zsh-syntax-hightlighting
# Ubuntu: sudo apt install zsh-syntax-highlighting

export PATH=$PATH:$HOME/go/bin:$HOME/.deno/bin:$HOME/.cargo/bin

eval "$(starship init zsh)"
