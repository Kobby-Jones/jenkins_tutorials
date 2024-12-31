!#/bin/bash

sudo yum update

# Add the Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import a key file from Jenkins-CI to enable installation from the package
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

sudo yum upgrade -y

# Install Java(Amazon Linux)
echo "Installing Java"
sudo dnf install java-17-amazon-corretto -y

# Install Jenkins
echo "Installing Jenkins"
sudo yum install jenkins -y

# Enable Jenkins
sudo systemctl enable jenkins

# Start Jenkins
sudo systemctl start jenkins
