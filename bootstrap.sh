#!/bin/bash

# Installation starts here

PROMPT="[MAIN]"
CURR=`pwd`

echo
echo "${PROMPT} We will now Install development environmnet. Sit back and relax."
echo
./init/init.bootstrap.sh
echo
./bash/bash-bootstrap.sh
echo
./vim/vim-bootstrap.sh


echo "${PROMPT} Installation complete."
