#!/bin/bash

PROMPT="[BASH]"

echo "${PROMPT} Setting up Bash..."
cp bash/.bashrc ~/.bashrc
cp bash/.bash_profile ~/.bash_profile
cp bash/.aliases ~/.aliases
cp bash/.exports ~/.exports
cp bash/.functions ~/.functions
cp bash/.startup ~/.startup
cp bash/.prompt ~/.prompt
echo "${PROMPT} Bash setup complete."
