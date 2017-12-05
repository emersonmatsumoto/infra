#!/bin/bash

echo "Atualizando apt get"
apt-get update

echo "Instalando nginx"
apt-get install -y nginx

echo "Copiando configuracoes do nginx"
cp -f default /etc/nginx/sites-available/

echo "Copiando configuracoes do proxy do kubernetes"
cp -f kubectl_proxy.service /etc/systemd/system/

echo "Configurando e iniciando proxy do kubernetes"
systemctl enable kubectl_proxy.service
service kubectl_proxy start

echo "Reiniciando nginx"
service nginx restart
