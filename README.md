# AWS Infrastructure with ALB and Path-Based Routing

This Terraform project sets up a complete AWS infrastructure with path-based routing using an Application Load Balancer.

## Architecture

The infrastructure includes:

- Custom VPC with public and private subnets across three availability zones
- Internet Gateway and NAT Gateway for internet connectivity
- Application Load Balancer with path-based routing
- Three EC2 instances in private subnets, each serving different content:
  - Web Server-1: Responds to the root path (/)
  - Web Server-2: Responds to the /images path
  - Web Server-3: Responds to the /register path

## Prerequisites

- [Terraform](https://www.terraform.io/downloads.html) (>= 1.2.0)
- AWS CLI configured with appropriate credentials

## Usage

1. Initialize Terraform:
   ```bash
   terraform init
   ```


2. Apply the configuration:

3. Access the application:
   After successful deployment, you'll get the ALB DNS name in the outputs. Use this URL to access:
   - Homepage: http://<alb_dns_name>/
   - Images: http://<alb_dns_name>/images
   - Registration: http://<alb_dns_name>/register


## Structure

- `main.tf` - Main configuration file
- `variables.tf` - Input variables
- `outputs.tf` - Output values
- `modules/` - Modular components:
  - `network/` - VPC and networking resources
  - `sg/` - Security groups
  - `alb/` - ALB and listener rules
  - `ec2/` - EC2 instances 
  - `target_group/` -  target group and attachments
- `scripts/` - User data scripts for EC2 instances

## Notes

- Each EC2 instance runs Nginx and serves custom HTML content
- Instances are placed in private subnets for enhanced security
- All traffic to the instances is routed through the ALB
