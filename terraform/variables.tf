# variables.tf
# Defines all configurable variables for the infrastructure

variable "aws_region" {
  description = "AWS region where resources will be created"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment name (dev, staging, prod)"
  type        = string
  default     = "production"
}

variable "project_name" {
  description = "Project name used for resource naming"
  type        = string
  default     = "aws-demo"
}

variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"  # Free tier eligible
}

variable "root_volume_size" {
  description = "Size of root EBS volume in GB"
  type        = number
  default     = 20
}

variable "vpc_cidr" {
  description = "CIDR block for VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "my_ip" {
  description = "Your public IP address for SSH access (format: x.x.x.x/32)"
  type        = string
  # MUST be set in terraform.tfvars file
}

variable "ssh_key_name" {
  description = "Name for the SSH key pair"
  type        = string
  default     = "aws-demo-key"
}

variable "enable_elastic_ip" {
  description = "Whether to create and associate an Elastic IP (static IP)"
  type        = bool
  default     = true
}
