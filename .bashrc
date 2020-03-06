#CONSOLE PROMPT

YELLOW="\e[1;33m";
RED="\e[1;31m";
GREEN="\e[1;32m";
CYAN="\e[0;36m";
WHITE="\e[1;37m";
RESET="\e[0;37m";


function bash_prompt() {
    # Get smiley based on last status
    local last_status=$?
    local smiley="${GREEN}:)"
    if [[ "$last_status" != "0" ]]; then
       smiley="${RED}:(";
    fi
	

    # Get git branch
    #local git_branch=`git rev-parse --abbrev-ref HEAD 2> /dev/null`
    local git_branch=`git branch --show-current 2> /dev/null`
	if [ "$git_branch" ]; then
		git_branch="($git_branch)"
	fi
	
    #Title
    local title="\033]0;Amey Kamat: Master of the Universe\a"
    # Build everything together
    echo -e "${title}\n${WHITE}[\#] ${smiley} ${YELLOW}\w${CYAN} ${git_branch} \n${YELLOW}\$> ${RESET}"
}

PROMPT_COMMAND='PS1=$(bash_prompt)' 
export PS1;

# PATH Variables
APP_HOME=~/work/apps
export APP_HOME

JAVA_HOME_12=
JAVA_HOME_8=
JAVA_HOME=$JAVA_HOME_8

MAVEN_HOME=
MONGO_HOME=
PYTHON_HOME=
KUBECTL_PATH=

SCRIPTS=$APP_HOME/scripts
export SCRIPTS

path(){
   PATH=$JAVA_HOME/bin:$MAVEN_HOME/bin:$MONGO_HOME/bin:$KUBECTL_PATH:$PYTHON_HOME::$PATH:$SCRIPTS
   export PATH
}

path

# ALIASES
alias jdk8="source jdk8.sh && path && java -version"
alias jdk12="source jdk12.sh && path && java -version"

alias mci="mvn clean install"
alias mcist="mvn clean install -Dmaven.test.skip=true"
alias msbr="mvn spring-boot:run"

alias ni="npm install --verbose"
alias nrs="npm run start"

alias .="cd ~/work"
alias ~="cd ~"
alias ..="cd .."
alias repos="cd ~/work/repositories"

alias refresh="source ~/.bashrc"

# cd
cd() {
   echo
   builtin cd $1
   ls
}

# git clone
clone() {
   git-clone.sh $1
}

branch() {
  echo `git rev-parse --abbrev-ref HEAD 2> /dev/null`
}

push(){
  git push --set-upstream origin `branch`

}

# git commit
commit() {
  local work_item=`branch | grep -oE '(US|DE)[0-9]{6,}'`
  git commit -m "$work_item - $1"
}



# STARTUP SCRIPT

clear
echo
echo
echo
echo -e "${YELLOW}              *              )  "   
echo -e "${YELLOW}     (      (  \`          ( /(  "
echo -e "${YELLOW}     )\     )\))(   (     )\()) "
echo -e "${YELLOW}  ((((_)(  ((_)()\  )\   ((_)\  "
echo -e "${YELLOW}   )\ _ )\ (_()((_)((_) __ ((_) "
echo -e "${YELLOW}   (_)_\(_)|  \/  || __|\ \ / / "
echo -e "${CYAN}    / _ \  | |\/| || _|  \ V /  "
echo -e "${CYAN}   /_/ \_\ |_|  |_||___|  |_|   "
echo
echo -e "\e[1;36m   The Master of the Universe      " 
echo -e "\e[1;36m   Welcomes you to the Console     "
echo -e "        \e[4;34mwww.ameykamat.in${RESET}     "
echo
echo
builtin cd ~/work

