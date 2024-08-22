#!/bin/bash

sudo useradd sonar
sudo apt install wget unzip java-11-openjdk-devel -y 
sudo wget https://binaries.sonarsource.com/Distribution/sonarqube/sonarqube-10.6.0.92116.zip
sudo unzip sonarqube-10.6.0.92116.zip -d /opt/
sudo mv /opt/sonarqube-10.6.0.92116 /opt/sonarqube
sudo chown -R sonar:sonar /opt/sonarqube

# instalacao sonar scanner
sudo wget https://binaries.sonarsource.com/Distribution/sonar-scanner-cli/sonar-scanner-cli-4.6.2.2472-linux.zip
sudo unzip sonar-scanner-cli-4.6.2.2472-linux.zip -d /opt/sonar-scanner
sudo chown -R sonar:sonar /opt/sonar-scanner


