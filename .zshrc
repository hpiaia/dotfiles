# ---
# * Exports
# ---

export PATH=$HOME/bin:/usr/local/bin:$PATH
export PATH=$HOME/.composer/vendor/bin:$PATH

export ZSH="/Users/hpiaia/.oh-my-zsh"

# ---
# * Zsh Configuration
# ---

ZSH_THEME="spaceship"

plugins=(zsh-autosuggestions zsh-syntax-highlighting zsh-completions git docker docker-compose kubectl heroku)

SPACESHIP_PROMPT_ORDER=(user dir host git char)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

source $ZSH/oh-my-zsh.sh

unsetopt PROMPT_SP

# ---
# * Aliases
# ---

# Git
alias git="hub"
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"

# Laravel
alias art="php artisan"
alias mfs="php artisan migrate:fresh --seed"

# ---
# * Plugins
# ---

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
