# supress greeting message
set fish_greeting
# Docker & Kubernetes
alias dc="docker compose"
alias dcup="docker compose up -d"

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

	if command -q kubectl
		alias k="kubectl"
		kubectl completion fish | source
	end

	if command -q direnv
		direnv hook fish | source
	end
end

