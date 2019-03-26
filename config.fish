# General Config
set -g theme_powerline_fonts no
set -g theme_color_scheme base16-dark

# Docker Compose
alias dc="docker-compose"
alias dcup="docker-compose up -d"

# Brew
alias bubu="brew update; and brew outdated; and brew upgrade; and brew cleanup"

# Java
set -x JAVA_HOME (/usr/libexec/java_home -v 1.8)

