# this file includes all other settings

source ~/.bash/.exports
source ~/.bash/.functions
source ~/.bash/.aliases
source ~/.bash/.prompt
source ~/.bash/.startup
source ~/.bash/.git-customizations

# DO NOT ADD ANYTHING BELOW THIS LINE
if [ -f ~/.bashrc.local ]; then source ~/.bashrc.local; fi
