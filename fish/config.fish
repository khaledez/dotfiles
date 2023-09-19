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
	base16-snazzy
	# 1Password plugins
	if [ -e "$HOME/.op/plugins.sh" ] 
		source $HOME/.op/plugins.sh
	else if [ -e "$HOME/.config/op/plugins.sh" ]
		source $HOME/.config/op/plugins.sh
	end

	eval (/opt/homebrew/bin/brew shellenv)
end

