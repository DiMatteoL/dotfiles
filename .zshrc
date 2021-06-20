if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/Users/luca/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(
  git
  zsh-autosuggestions
  history-substring-search
  nvm
  vi-mode
)
autoload -U compinit && compinit

# Load aliases and shortcuts if existent.
[ -f "$HOME/.shortcutrc" ] && source "$HOME/.shortcutrc"
[ -f "$HOME/.aliasrc" ] && source "$HOME/.aliasrc"

source $ZSH/oh-my-zsh.sh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
