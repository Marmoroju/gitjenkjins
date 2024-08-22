#!/bin/bash

# ATUALIZAÇÕES E INSTALAÇÕES GERAIS
sudo apt-get update -y
sudo apt-get upgrade -y
sudo apt-get install wget -y
sudo apt-get install git -y

# ADIÇÃO DE DEPENDÊNCIAS
sudo apt-get install fontconfig openjdk-17-jre -y

sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian/jenkins.io-2023.key

echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null

# INSTALAÇÃO DO JENKINS
sudo apt-get update -y
sudo apt install jenkins -y

# HABILITAR JENKINS
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins

# INSTALAÇÃO DO APACHE2
sudo apt install apache2 -y
sudo systemctl enable apache2

# PERMISSÕES JENKINS
sudo chmod 777 /var/lib/jenkins
sudo chmod 777 /var/www/html
sudo usermod -aG vagrant jenkins
sudo bash -c 'echo "jenkins ALL= NOPASSWD: ALL" >> /etc/sudoers'

# instalacao sonar scanner
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-6.1.0.4477-linux-x64.zip
sudo unzip sonar-scanner-cli-6.1.0.4477-linux-x64.zip -d /opt/sonar-scanner
sudo chown -R jenkins:jenkins /opt/sonar-scanner
echo 'export PATH=$PATH:/opt/sonar-scanner/bin' | sudo tee -a /etc/profile


