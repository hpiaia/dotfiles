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

plugins=(git brew)

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

function tinker()
{
  if [ -z "$1" ]
    then
      php artisan tinker
    else
      php artisan tinker --execute="dd($1);"
  fi
}

# ---
# * Plugins
# ---
