# Source ZSH 
source ~/.zshrc


# Change theme
ZSH_THEME="avit"


# My alias
alias r="cd /"
alias root="cd /"
alias h="cd ~"
alias home="cd ~"


# Alias and  Exports
# Alias to export secrets and env varaiables when I navigate to a project
alias myproject="cd /home/mohamed/Mohamed/DEBI/Repos/linux-and-bash/week2/project && source /home/mohamed/Mohamed/DEBI/Repos/linux-and-bash/week2/project/projectENV.sh"

# ALias to remove a project variable and logout of it
alias outmyproject="cd ~ && source /home/mohamed/Mohamed/DEBI/Repos/linux-and-bash/week2/project/unsetprojectENV.sh"
