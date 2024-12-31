#!/bin/bash

# Update the Instance
sudo yum update –y

# Add the Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import a key file from Jenkins-CI to enable installation from the package
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade

# Install Java (Amazon Linux 2023)
sudo dnf install java-17-amazon-corretto -y


# Install Jenkins
echo "Installing Jenkins"
sudo yum install jenkins -y

# Enable the Jenkins service to start at boot
sudo systemctl enable Jenkins

# Start Jenkins as a service
sudo systemctl start Jenkins