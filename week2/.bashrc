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

# Alias and  Exports
# Alias to export secrets and env varaiables when I navigate to a project
alias myproject="cd /home/mohamed/Mohamed/DEBI/Repos/linux-and-bash/week2/project && source /home/mohamed/Mohamed/DEBI/Repos/linux-and-bash/week2/project/projectENV.sh"

# ALias to remove a project variable and logout of it
alias outmyproject="cd ~ && source /home/mohamed/Mohamed/DEBI/Repos/linux-and-bash/week2/project/unsetprojectENV.sh"