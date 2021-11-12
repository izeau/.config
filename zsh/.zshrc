# Use Vi key bindings
export KEYTIMEOUT=1
bindkey -v
bindkey "^?" backward-delete-char
bindkey "^W" backward-kill-word 
bindkey "^H" backward-delete-char
bindkey "^U" backward-kill-line

# Line navigation
bindkey "^[[1~" beginning-of-line
bindkey "^A" beginning-of-line
bindkey "^[[4~" end-of-line
bindkey "^E" end-of-line
bindkey "^F" forward-word
bindkey "^B" backward-word

# History navigation
bindkey "^P" up-line-or-search
bindkey "^N" down-line-or-search

# Init Starship (see starship.rs)
source <(/opt/homebrew/bin/starship init zsh --print-full-init)

# Setup fzf, fnm, direnv
source "${HOMEBREW_PREFIX}/opt/fzf/shell/completion.zsh"
source "${HOMEBREW_PREFIX}/opt/fzf/shell/key-bindings.zsh"
source "${HOMEBREW_PREFIX}/share/zsh-autosuggestions/zsh-autosuggestions.zsh"
eval "$(fnm env)"
eval "$(direnv hook zsh)"

# Enable autocompletion
FPATH="${HOMEBREW_PREFIX}/share/zsh/site-functions:${FPATH:-}"
autoload -Uz compinit
compinit

# Setup kubectl completion
source <(kubectl completion zsh)
alias k="kubectl"

# Init zsh-syntax-highlighting
source "${HOMEBREW_PREFIX}/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
