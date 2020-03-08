#!/bin/bash
# This file installs new tools

PROMPT="[TOOLS]"

JAVA_VER=
MVN_VER="3.6.3"
MONGO_VER="4.2.3"
NODE_VER="12.16.1"

echo "${PROMPT} Starting to install commonly used tools"

echo
echo "${PROMPT} Installing Maven..."
curl -fLo ~/work/apps/apache-maven-${MVN_VER}.tar.gz --create-dirs http://apachemirror.wuchna.com/maven/maven-3/${MVN_VER}/binaries/apache-maven-${MVN_VER}-bin.tar.gz
tar xvf ~/work/apps/apache-maven-${MVN_VER}.tar.gz -C ~/work/apps/
mv ~/work/apps/apache-maven-${MVN_VER} ~/work/apps/apache-maven
echo "${PROMPT} Maven installation complete."

echo
echo "${PROMPT} Installing MongoDB..."
curl -fLo ~/work/apps/mongodb-${MONGO_VER}.tar.gz --create-dirs https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-ubuntu1604-${MONGO_VER}.tgz 
tar xvf ~/work/apps/mongodb-${MONGO_VER}.tar.gz -C ~/work/apps/
mv ~/work/apps/mongodb-linux-x86_64-ubuntu1604-${MONGO_VER} ~/work/apps/mongodb
echo "${PROMPT} MongoDB installation complete."

echo
echo "${PROMPT} Installing Node..."
curl -fLo ~/work/apps/node-v${NODE_VER}-linux-x64.tar.gz --create-dirs https://nodejs.org/dist/v${NODE_VER}/node-v${NODE_VER}-linux-x64.tar.xz
tar xvf ~/work/apps/node-v${NODE_VER}-linux-x64.tar.gz -C ~/work/apps/ 
mv ~/work/apps/node-v${NODE_VER}-linux-x64 ~/work/apps/node 
echo "${PROMPT} Node installation complete."
