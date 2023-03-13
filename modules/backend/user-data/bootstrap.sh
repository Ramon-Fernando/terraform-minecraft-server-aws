#!/bin/bash
yum update -y
rpm --import https://yum.corretto.aws/corretto.key 
curl -L -o /etc/yum.repos.d/corretto.repo https://yum.corretto.aws/corretto.repo
yum install -y java-19-amazon-corretto-devel
adduser minecraft
mkdir /opt/minecraft
mkdir /opt/minecraft/server
mkdir /opt/minecraft/backup
wget -P /opt/minecraft/server https://piston-data.mojang.com/v1/objects/c9df48efed58511cdd0213c56b9013a7b5c9ac1f/server.jar
echo "eula=true" > /opt/minecraft/server/eula.txt
chown -R minecraft:minecraft /opt/minecraft