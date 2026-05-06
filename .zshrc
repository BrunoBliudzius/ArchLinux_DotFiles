
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"
plugins=(git)
source $ZSH/oh-my-zsh.sh

alias zshconfig="mate ~/.zshrc"
alias ohmyzsh="mate ~/.oh-my-zsh"
alias ls="eza --icons"
alias ll="eza -lah --icons"
alias la="eza -a --icons"
alias lt="eza --tree --level=2 --icons"
alias cat="bat"
alias cls="clear"
alias fetch="fastfetch"
alias grep="grep --color=auto"
eval "$(zoxide init zsh)"
eval "$(starship init zsh)"

[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
