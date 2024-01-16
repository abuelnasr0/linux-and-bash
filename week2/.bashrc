echo "Sourcing default bash shell"
source ~/.bashrc


# My Aliases
alias cpu5='ps auxf | sort -nr -k 3 | head -5'
alias mem5='ps auxf | sort -nr -k 4 | head -5'
alias c='clear'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias me='cd ~/Mohamed'

# Path
export pathToKeys="./secrets.sh"

# Source
source $pathToKeys
