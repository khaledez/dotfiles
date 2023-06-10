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

# Prompt
set fish_function_path $HOME/.dotfiles/fish-theme-ezan $fish_function_path 

# Docker & Kubernetes
alias dc="docker compose"
alias dcup="docker compose up -d"
alias k="kubectl"

if [ -e '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish' ] 
	source '/nix/var/nix/profiles/default/etc/profile.d/nix-daemon.fish'
end

fish_add_path "$HOME/go/bin"
fish_add_path "$HOME/.deno/bin"
fish_add_path "$HOME/.cargo/bin"

# brew
alias bubu="brew update; and brew outdated; and brew upgrade; and brew cleanup"

if status is-interactive 
	# 1Password plugins
	source $HOME/.config/op/plugins.sh
	eval (/opt/homebrew/bin/brew shellenv)
end

