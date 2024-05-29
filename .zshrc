eval "$(/opt/homebrew/bin/brew shellenv)"

# Define where zinit and it's plugins will live.
ZINIT_HOME="${XDG_DATA_HOME:-${HOME}/.local/share}/zinit/zinit.git"

if [ ! -d "$ZINIT_HOME" ]; then
    mkdir -p "$(dirname $ZINIT_HOME)"
    git clone https://github.com/zdharma-continuum/zinit.git "$ZINIT_HOME"
fi

source "${ZINIT_HOME}/zinit.zsh"

# Plugins
zinit light zsh-users/zsh-syntax-highlighting
zinit light zsh-users/zsh-completions
zinit light zsh-users/zsh-autosuggestions
zinit light Aloxaf/fzf-tab

# Add snippets
zinit snippet OMZP::git
zinit snippet OMZP::command-not-found

autoload -U compinit && compinit

zinit cdreplay -q

# Keybindings
bindkey -e
bindkey '^p' history-search-backward
bindkey '^n' history-search-forward

# History
HISTSIZE=5000
HISTFILE=~/.zsh_history
SAVEHIST=$HISTSIZE
HISTDUPE=erase
setopt appendhistory
setopt sharehistory
setopt hist_ignore_space
setopt hist_ignore_all_dups
setopt hist_save_no_dups
setopt hist_ignore_dups
setopt hist_find_no_dups

# Aliasses
alias gst="git status"
alias ls="lsd --color auto"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"
alias glo="git log --oneline"
alias nv="nvim"
alias zel="zellij"
alias zelc="zel attach --create"
alias zela="zel attach"
alias zells="zel list-sessions"
alias cat="bat"

# Completion styling
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'
zstyle ':completion:*' list-colors "${(s.:.)LS_COLORS}"
zstyle ':completion:*' menu no
zstyle ':fzf-tab:complete:cd:*' fzf-preview 'ls $realpath'
zstyle ':fzf-tab:complete:__zoxide_z:*' fzf-preview 'ls $realpath'

# Pyenv
export PYENV_ROOT="$HOME/.pyenv"
[[ -d $PYENV_ROOT/bin ]] && export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Zoxide
eval "$(zoxide init zsh)"

# Pipx
 export PATH="$PATH:/Users/rubenhesselink/.local/bin"
 # eval "$(register-python-argcomplete pipx)"

# Fourdigits CLI
 # eval "$(_4D_COMPLETE=zsh_source 4d)"
 # eval "$(_FOURDIGITS_COMPLETE=zsh_source fourdigits)"

# Fzf
eval "$(fzf --zsh)"

# Starship (MUST BE LAST)
eval "$(starship init zsh)"

