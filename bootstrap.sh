#!/bin/bash

# Installation starts here

PROMPT="[INIT]"
CURR=`pwd`

init(){
    echo "${PROMPT} We will now Install development environmnet. Sit back and relax."
    echo
    echo "${PROMPT} Creating useful directory structure..."
    cd ~
    mkdir work
    cd work
    mkdir apps
    mkdir scripts
    mkdir projects
    mkdir playground
    mkdir docs
    cd ~/work
    echo "${PROMPT} Directory structure created."
    echo "   work/"
    ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/-/|/'
    echo
    echo "${PROMPT} Initialisation complete."
    cd $CURR
}

echo
init

./bash/bash-bootstrap.sh
./vim/vim-bootstrap.sh
./tools/tools-bootstrap.sh

echo "${PROMPT} Installation complete."
