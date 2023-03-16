#!/bin/bash

echo "Atualizando servidor..."
sudo apt update
sudo apt upgrade -y


echo "Instalando o Apache2 e Unzip..."
sudo apt install apache2 -y
sudo apt install unzip -y


echo "Baixando e descompactando aplicação..."
cd /tmp
wget https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip
unzip main.zip


echo "Copiando arquivos para o diretório padrão do Apache..."
cd linux-site-dio-main
sudo cp -R * /var/www/html/


echo "Procedimento finalizado."
