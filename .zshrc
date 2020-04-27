# ---
# * Exports
# ---

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH

export ZSH="/Users/hpiaia/.oh-my-zsh"

# ---
# * Zsh Configuration
# ---

unsetopt PROMPT_SP

ZSH_THEME="robbyrussell"

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ---
# * Aliases
# ---

# Git
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"

# Laravel
alias art="php artisan"
alias mfs="php artisan migrate:fresh --seed"
