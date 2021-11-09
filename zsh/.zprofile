# Use neovim as the default editor
export EDITOR="nvim"

# Homebrew parameters
export HOMEBREW_PREFIX="/opt/homebrew"
export HOMEBREW_CELLAR="/opt/homebrew/Cellar"
export HOMEBREW_REPOSITORY="/opt/homebrew"
export HOMEBREW_SHELLENV_PREFIX="/opt/homebrew"

# Add Homebrew path to various PATH vars
export PATH="${HOMEBREW_PREFIX}/bin:/opt/homebrew/sbin${PATH+:$PATH}"
export MANPATH="${HOMEBREW_PREFIX}/share/man${MANPATH+:$MANPATH}:"
export INFOPATH="${HOMEBREW_PREFIX}/share/info:${INFOPATH:-}"

# Clear screen after paging
export BAT_PAGER="less -R"

# Use bat to colorize manpages
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
