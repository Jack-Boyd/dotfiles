# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load
ZSH_THEME="powerlevel10k/powerlevel10k"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Load fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# User configuration

# PATH modifications
export PATH="/opt/homebrew/bin:$PATH"
export PATH="/opt/homebrew/sbin:$PATH"
export PATH="./bin:$PATH"
export PATH="$HOME/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
export PATH="./node_modules/.bin:$PATH"
export GOPATH="$HOME/go"
export PATH="$GOPATH/bin:$PATH"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"

# Disable greeting
unset greeting

# Set terminal
export TERM="xterm-ghostty"

# Aliases
alias ls="ls -p -G"
alias la="ls -A"
alias ll="ls -l"
alias lla="ls -lA"
alias g="git"
alias c="claude"
if command -v nvim >/dev/null 2>&1; then
  alias vim="nvim"
fi
export EDITOR="nvim"

# Local config

fcd() {
  echo "Starting fcd"
  local dir=$(find . -maxdepth 1 -type d -print0 | sort -z | fzf -0 -1)
  echo "fzf result: $dir"
  if [[ -n "$dir" ]]; then
    cd "$dir"
    echo "cd to: $dir"
  else
    echo "No directory selected"
  fi
  echo "fcd finished"
}
# config-osx.zsh content directly in .zshrc
if command -v eza >/dev/null 2>&1; then
  alias ll="eza -l -g --icons"
  alias lla="eza -la -g --icons"
fi

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh


# fnm
FNM_PATH="/opt/homebrew/opt/fnm/bin"
if [ -d "$FNM_PATH" ]; then
  eval "`fnm env`"
fi
