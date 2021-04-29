# Docker compose
alias dc="docker-compose"
alias dcup="docker-compose up -d"

# brew
alias bubu="brew update; and brew outdated; and brew upgrade; and brew cleanup"
set -g fish_user_paths "/opt/homebrew/bin" $fish_user_paths

# GOPATH
set -g fish_user_paths $fish_user_paths "$HOME/go/bin"

# deno
set -g fish_user_paths $HOME/.deno/bin $fish_user_paths

# nix
if test -e /Users/khaled/.nix-profile/etc/profile.d/nix.sh
  bass export NIX_IGNORE_SYMLINK_STORE=1
  bass source /Users/khaled/.nix-profile/etc/profile.d/nix.sh
end

# Snazzy color theme
set -l sz_fgColor eff0eb
set -l sz_bgColor 282a36
set -l sz_red ff5c57
set -l sz_green 5af78e
set -l sz_yellow f3f99d
set -l sz_blue 57c7ff
set -l sz_magenta ff6ac1
set -l sz_cyan 9aedfe

set fish_color_normal $sz_fgColor
set fish_color_command $sz_green
set fish_color_error $sz_red
set fish_color_quote $sz_yellow
set fish_color_param $sz_blue

