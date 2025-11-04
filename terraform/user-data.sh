#!/bin/bash
# user-data.sh
# This script runs when EC2 instance first boots up
# It installs Docker and prepares the server for your app

set -e  # Exit on any error

# Log everything
exec > >(tee /var/log/user-data.log)
exec 2>&1

echo "================================"
echo "Starting EC2 Initialization"
echo "Time: $(date)"
echo "================================"

# Update system
echo "[1/6] Updating system packages..."
sudo yum update -y

# Install Docker
echo "[2/6] Installing Docker..."
sudo yum install docker -y

# Start Docker service
echo "[3/6] Starting Docker service..."
sudo systemctl start docker
sudo systemctl enable docker

# Add ec2-user to docker group
echo "[4/6] Adding ec2-user to docker group..."
sudo usermod -a -G docker ec2-user

# Install Git
echo "[5/6] Installing Git..."
sudo yum install git -y

# Install useful tools
echo "[6/6] Installing useful tools..."
sudo yum install htop wget curl -y

# Create app directory
echo "Creating application directory..."
sudo mkdir -p /home/ec2-user/aws-demo
sudo chown ec2-user:ec2-user /home/ec2-user/aws-demo

# Optional: Clone repository (commented out - will be done by GitHub Actions)
# cd /home/ec2-user
# git clone ${github_repo}
# cd aws-demo/app/frontend
# docker build -t react-app .
# docker run -d --name react-app -p 80:80 --restart unless-stopped react-app

echo "================================"
echo "EC2 Initialization Complete!"
echo "Time: $(date)"
echo "================================"
echo ""
echo "Next steps:"
echo "1. SSH into this instance"
echo "2. Clone your repository"
echo "3. Build and run Docker container"
echo "4. Or use GitHub Actions for automatic deployment"
echo ""
echo "Docker version: $(docker --version)"
echo "Git version: $(git --version)"