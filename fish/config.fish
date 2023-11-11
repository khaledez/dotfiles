# Docker & Kubernetes
alias dc="docker compose"
alias dcup="docker compose up -d"
alias k="kubectl"

fish_add_path "$HOME/go/bin"
fish_add_path "$HOME/.deno/bin"
fish_add_path "$HOME/.cargo/bin"

# brew
alias bubu="brew update; and brew outdated; and brew upgrade; and brew cleanup"

if status is-interactive 
	base16-snazzy

	eval (/opt/homebrew/bin/brew shellenv)
end

