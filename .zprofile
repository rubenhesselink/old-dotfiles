eval "$(/opt/homebrew/bin/brew shellenv)"

# Added by OrbStack: command-line tools and integration
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Created by `pipx` on 2024-05-29 15:00:46
export PATH="$PATH:/Users/rubenhesselink/.local/bin"

if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
