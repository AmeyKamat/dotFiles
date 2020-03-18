#!/bin/sh

PROMPT="[INIT]"
CURR=`pwd`

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
