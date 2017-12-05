#!/bin/bash

echo "Login"
az login

echo "Criando cluster com 1 no"
az aks create --resource-group $1 --name $2 --node-count 1 --generate-ssh-keys

echo "Instalando kubectl"
az aks install-cli

echo "Download das credentials do cluster"
az aks get-credentials --resource-group $1 --name $2


