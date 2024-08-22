#!/bin/bash

sudo useradd sonar
sudo apt install wget unzip java-11-openjdk-devel -y 

# Instalação do Sonarqube
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.6.0.92116.zip
sudo unzip sonarqube-10.6.0.92116.zip -d /opt/
sudo mv /opt/sonarqube-10.6.0.92116 /opt/sonarqube
sudo chown -R sonar:sonar /opt/sonarqube

# instalacao sonar scanner
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-6.1.0.4477-linux-x64.zip
sudo unzip sonar-scanner-cli-6.1.0.4477-linux-x64.zip -d /opt/sonar-scanner
sudo chown -R jenkins:jenkins /opt/sonar-scanner
echo 'export PATH=$PATH:/opt/sonar-scanner/bin' | sudo tee -a /etc/profile


