# Load required mods
autoload -U compaudit compinit

# case-insensitive completion
compinit
zmodload -i zsh/complist
zstyle ':completion:*' matcher-list 'm:{a-zA-Z-_}={A-Za-z_-}' 'r:|=*' 'l:|=* r:|=*'

# Nix
if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh' ]; then
    . '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.sh'
fi
# End Nix


# brew
if [[ `uname` == 'Darwin' ]]; then
  alias bubu="brew update; brew outdated; brew upgrade; brew cleanup"
fi

# Syntax hightlighting
# Install it first:
# Mac: brew install zsh-syntax-hightlighting
# Ubuntu: sudo apt install zsh-syntax-highlighting

export PATH=$PATH:$HOME/go/bin:$HOME/.deno/bin:$HOME/.cargo/bin

eval "$(starship init zsh)"
