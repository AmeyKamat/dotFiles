#!/bin/bash

PROMPT="[BASH]"

echo "${PROMPT} Setting up Bash..."
cp bash/.bashrc ~/.bashrc
cp bash/.bash_profile ~/.bash_profile
mkdir ~/.bash
cp bash/.aliases ~/.bash/.aliases
cp bash/.exports ~/.bash/.exports
cp bash/.functions ~/.bash/.functions
cp bash/.startup ~/.bash/.startup
cp bash/.prompt ~/.bash/.prompt
cp bash/.prompt ~/.bash/.git-customizations
echo "${PROMPT} Bash setup complete."
