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

# Docker & Kubernetes
alias dc="docker-compose"
alias dcup="docker-compose up -d"
alias k="kubectl"

fish_add_path "$HOME/go/bin"
fish_add_path "$HOME/.deno/bin"

# nix 
#if test -e '/Users/khaled/.nix-profile/etc/profile.d/nix.sh'
#  fenv source '/Users/khaled/.nix-profile/etc/profile.d/nix.sh'
#end

# rust 
fish_add_path "$HOME/.cargo/bin"

# brew
alias bubu="brew update; and brew outdated; and brew upgrade; and brew cleanup"
fish_add_path /opt/homebrew/bin
fish_add_path /opt/homebrew/sbin

