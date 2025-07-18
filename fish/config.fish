# supress greeting message
set fish_greeting
# disable character globing (?)
set fish_features qmark-noglob

# Docker & Kubernetes
alias dc="docker compose"
alias dcup="docker compose up -d"
alias tf="terraform"

fish_add_path "$HOME/go/bin"
fish_add_path "$HOME/.cargo/bin"

if test "$(uname)" = "Darwin"
	# brew
	alias bubu="brew update; and brew outdated; and brew upgrade; and brew cleanup"
	eval (/opt/homebrew/bin/brew shellenv)
end

if status is-interactive 
	base16-snazzy

	if command -q kubectl
		alias k="kubectl"
		kubectl completion fish | source
	end

	if command -q direnv
		direnv hook fish | source
	end

	if command -q fnm
		fnm env | source
	end
end

