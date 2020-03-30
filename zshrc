
# Path to your oh-my-zsh installation.
export ZSH="/home/igor/.oh-my-zsh"

# Theme
ZSH_THEME="spaceship"


# Plugins
plugins=(
    zsh-syntax-highlighting
    zsh-autosuggestions
)

source $ZSH/oh-my-zsh.sh


# My configs
alias lab="cd '/home/igor/Área de trabalho/Lab'"
alias projects="cd '/home/igor/Área de trabalho/Projects'"

# Theme config
SPACESHIP_PROMPT_ORDER=(
    time        # Time stamps section
    dir         # Current directory section
    git         # Git section
    package     # Package version
    node        # Nodejs section
    golang      # Golang section
    php         # PHP section
    docker      # Docker section
    exec_time   # Execution time
    line_sep    # Line break
    vi_mode     # Vi-mode indicator
    jobs        # Background jobs indicator
    exit_code   # Exit code section
    char        # Prompt character
)


# NVM  Config
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
