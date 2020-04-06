# ---
# * Exports
# ---

export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="/Users/hpiaia/.oh-my-zsh"

# ---
# * Zsh Configuration
# ---

unsetopt PROMPT_SP

ZSH_THEME="spaceship"

SPACESHIP_PROMPT_ORDER=(
  user          # Username section
  dir           # Current directory section
  host          # Hostname section
  git           # Git section (git_branch + git_status)
  exec_time     # Execution time
  line_sep      # Line break
  vi_mode       # Vi-mode indicator
  jobs          # Background jobs indicator
  exit_code     # Exit code section
  char          # Prompt character
)
SPACESHIP_USER_SHOW=always
SPACESHIP_PROMPT_ADD_NEWLINE=false
SPACESHIP_PROMPT_SEPARATE_LINE=false
SPACESHIP_CHAR_SYMBOL="❯"
SPACESHIP_CHAR_SUFFIX=" "

plugins=(git zsh-autosuggestions zsh-completions zsh-syntax-highlighting)

source $ZSH/oh-my-zsh.sh

# ---
# * Aliases
# ---

# Git
alias wip="git add . && git commit -m 'wip'"
alias nah="git reset --hard && git clean -df"

# ---
# * Plugins
# ---

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# Brew Autocomplete
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH

  autoload -Uz compinit
  compinit
fi
