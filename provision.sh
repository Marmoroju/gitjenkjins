#!/bin/bash

# ATUALIZAÇÕES E INSTALAÇÕES GERAIS
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install wget -y
sudo apt-get install git -y

# ADIÇÃO DE DEPENDÊNCIAS
sudo apt install fontconfig openjdk-17-jre -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# INSTALAÇÃO DO JENKINS
sudo apt-get update -y
sudo apt-get install jenkins -y

# HABILITAR JENKINS
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins

# INSTALAÇÃO DO APACHE2
sudo apt install apache2 -y
sudo systemctl enable apache2

# PERMISSÕES JENKINS
sudo chmod 777 /var/lib/jenkins

