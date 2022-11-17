#!/bin/bash

# Installing system update

echo "Atualizando servidor..."

apt-get update
apt-get upgrade -y

echo "Atualização concluída."

# Installing Apache 2

echo "Instalando Apache 2..."

apt-get install apache2 -y

# Starting Apache

echo "Iniciando o Apache."

/etc/init.d/apache2 start

# Installing unzip

echo "Instalando unzip..."

apt-get install unzip -y

# Download application
echo "Download da aplicação..."

wget -P /temp https://github.com/denilsonbonatti/linux-site-dio/archive/refs/heads/main.zip

# Unzip file
echo "Descompactando arquivo para o diretório padrão do apache..."

rm /var/www/html/index.html

unzip /temp/main.zip

cp /temp/linux-site-dio-main/* /var/www/html/ -R

echo "Processo finalizado!"
