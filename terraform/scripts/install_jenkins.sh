#!/bin/bash
# Add Jenkins repo
sudo wget -O /etc/yum.repos.d/jenkins.repo \
    https://pkg.jenkins.io/redhat-stable/jenkins.repo

# Import the Jenkins GPG key
sudo rpm --import https://pkg.jenkins.io/redhat-stable/jenkins.io-2023.key

# Update all packages
sudo yum upgrade -y

# Install required dependencies for Jenkins
sudo yum install -y fontconfig java-17-openjdk
sudo yum install -y jenkins

# Reload Systemd, enable/start/status of Jenkins
sudo systemctl daemon-reload
sudo systemctl enable jenkins
sudo systemctl start jenkins
sudo systemctl status jenkins