# ---
# * Exports
# ---

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH
export PATH=/opt/homebrew/bin:$PATH

export ZSH="/Users/hpiaia/.oh-my-zsh"

# ---
# * Zsh Configuration
# ---

ZSH_THEME="powerlevel10k/powerlevel10k"

plugins=(git brew docker node npm zsh-nvm)

source $ZSH/oh-my-zsh.sh

unsetopt PROMPT_SP

# ---
# * Aliases
# ---

# Git
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"

# Laravel
alias art="php artisan"
alias mfs="art migrate:fresh --seed"

# Misc
alias ls="exa"

# ---
# * Plugins
# ---

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
