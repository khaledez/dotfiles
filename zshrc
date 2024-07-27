# Load required mods
autoload -U compaudit compinit

# case-insensitive completion
compinit
zmodload -i zsh/complist
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'


# brew
if [[ `uname` == 'Darwin' ]]; then
  alias bubu="brew update; brew outdated; brew upgrade; brew cleanup"
fi

# Syntax hightlighting
# Install it first:
# Mac: brew install zsh-syntax-hightlighting
# Ubuntu: sudo apt install zsh-syntax-highlighting
if [ -e '/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ]; then
	source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

export PATH=$PATH:$HOME/go/bin:$HOME/.deno/bin:$HOME/.cargo/bin
