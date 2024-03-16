# Docker & Kubernetes
alias dc="docker compose"
alias dcup="docker compose up -d"
alias k="kubectl"

fish_add_path "$HOME/go/bin"
fish_add_path "$HOME/.deno/bin"
fish_add_path "$HOME/.cargo/bin"

if test "$(uname)" = "Darwin"
	# brew
	alias bubu="brew update; and brew outdated; and brew upgrade; and brew cleanup"
end

if status is-interactive 
	base16-snazzy

	if test "$(uname)" = "Darwin"
		eval (/opt/homebrew/bin/brew shellenv)
	end
	kubectl completion fish | source
end


# bun
set --export BUN_INSTALL "$HOME/.bun"
set --export PATH $BUN_INSTALL/bin $PATH
