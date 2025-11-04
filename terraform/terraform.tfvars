# terraform.tfvars
# Your actual configuration values
# IMPORTANT: DO NOT commit this file to git! Add to .gitignore

# Required: Your public IP address for SSH access
# Find it by visiting: https://whatismyipaddress.com
my_ip = "YOUR_PUBLIC_IP/32"  # Example: "123.45.67.89/32"

# Optional: Override defaults if needed
aws_region    = "us-east-1"
project_name  = "aws-demo"
instance_type = "t2.micro"  # Free tier
environment   = "production"

# Your GitHub repository
github_repo = "https://github.com/YOUR_USERNAME/aws-demo.git"

# SSH Key name
ssh_key_name = "aws-demo-key"

# Enable Elastic IP (static IP that doesn't change)
enable_elastic_ip = true

# EC2 disk size in GB
root_volume_size = 20

# Example with different values:
# aws_region    = "us-west-2"
# instance_type = "t3.small"
# environment   = "staging"