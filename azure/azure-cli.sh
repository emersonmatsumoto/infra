#!/bin/bash

echo "Atualizando lista de pacotes"
echo "deb [arch=amd64] https://packages.microsoft.com/repos/azure-cli/ wheezy main" | \
     tee /etc/apt/sources.list.d/azure-cli.list

echo "Adicionando key"
apt-key adv --keyserver packages.microsoft.com --recv-keys 52E16F86FEE04B979B07E28DB02C46DF417A0893

echo "Instalando apt-transport-https"
apt-get install apt-transport-https

echo "Instalando azure cli"
apt-get update && sudo apt-get install azure-cli

