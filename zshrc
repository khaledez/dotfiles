# Load required mods
autoload -U compaudit compinit promptinit

# case-insensitive completion
compinit
zmodload -i zsh/complist
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'


# brew
if [[ `uname` == 'Darwin' ]]; then
  alias bubu="brew update; brew outdated; brew upgrade; brew cleanup"
fi

alias dc="docker compose"
alias dcup="docker compose up -d"
alias k=kubectl

# Syntax hightlighting
# Install it first:
# Mac: brew install zsh-syntax-hightlighting
# Ubuntu: sudo apt install zsh-syntax-highlighting
if [ -e '/opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh' ]; then
	source /opt/homebrew/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
fi

# Pure prompt
# Installation
# Mac: brew install pure
# npm: npm i -g pure-prompt
if [[ `uname` == 'Darwin' ]]; then
	fpath+=("$(brew --prefix)/share/zsh/site-functions")
	promptinit
	prompt pure
fi
promptinit
prompt pure

export PATH=$PATH:$HOME/go/bin:$HOME/.deno/bin:$HOME/.cargo/bin

eval "$(fnm env --use-on-cd --shell zsh)"

# Added by LM Studio CLI (lms)
export PATH="$PATH:/Users/khaled/.lmstudio/bin"
