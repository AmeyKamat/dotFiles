#!/bin/bash
# This file installs new tools

PROMPT="[TOOLS]"
CURR=`pwd`

echo "${PROMPT} Starting to install commonly used tools"

add-apt-repository -y ppa:jonathonf/vim

apt update
apt install -y git gcc g++ gdb vim


echo "${PROMPT} Installing Java..."
curl -fLo ~/work/apps/jdk-${JAVA_VER}.tar.gz https://download.oracle.com/otn-pub/java/jdk/${JAVA_VER}+8/d4173c853231432d94f001e99d882ca7/jdk-${JAVA_VER}_linux-x64_bin.tar.gz
tar xvf ~/work/apps/java-${JAVA_VER}.tar.gz -C ~/work/apps/
mv ~/work/apps/java-${JAVA_VER} ~/work/apps/java
echo "${PROMPT} Java installation complete."
