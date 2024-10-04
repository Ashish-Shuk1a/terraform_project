# Jenkins on AWS with Terraform

This Terraform configuration sets up a Jenkins instance on AWS using EC2, VPC, security groups, an Application Load Balancer (ALB), and AWS Certificate Manager (ACM). The setup is designed to provide a secure and scalable Jenkins environment with automatic domain configuration and SSL for HTTPS.

## Overview

### Key Components

1. **Networking (VPC, Subnets)**:
   - Creates a Virtual Private Cloud (VPC) with public and private subnets to host the Jenkins instance.
   - The public subnet allows access to the internet for the Jenkins EC2 instance via a public IP.

2. **Security Groups**:
   - Configures security groups to allow inbound SSH (port 22), HTTP (port 80), and HTTPS (port 443) traffic.
   - A separate security group is created to allow Jenkins-specific traffic on port 8080.

3. **Jenkins EC2 Instance**:
   - Launches an EC2 instance using the provided AMI ID and instance type (`t2.medium`).
   - Jenkins is installed via a `user_data` script, and the instance is assigned a public IP for access through the internet.

4. **Application Load Balancer (ALB)**:
   - Sets up an ALB to balance HTTP/HTTPS traffic and forward it to the Jenkins instance.
   - Configures listeners for HTTP (port 80) and HTTPS (port 443), ensuring secure communication with SSL.
   
5. **Hosted Zone and ACM**:
   - A Route 53 hosted zone is created for domain name management, pointing to the ALB.
   - ACM provides an SSL certificate for the Jenkins domain to enable secure access via HTTPS.

## How to Run

### Step 1: Clone the Repository

First, clone the repository and navigate to the Terraform configuration directory.

```bash
git clone https://github.com/Ashish-Shuk1a/terraform_project.git
cd terraform-project
```

### 2. Configure Variables

Create a `terraform.tfvars` file with the required variables:

```hcl
vpc_cidr            = "10.0.0.0/16"
cidr_public_subnet  = "10.0.1.0/24"
cidr_private_subnet = "10.0.2.0/24"
ec2_ami_id          = "ami-12345678"
public_key          = "ssh-rsa AAAA..."
domain_name         = "jenkins.example.com"
```

### 3. Initialize Terraform

```bash
terraform init
```

### 4. Review the Plan

```bash
terraform plan
```

### 5. Apply the Configuration

```bash
terraform apply
```

Or, to skip the confirmation prompt:

```bash
terraform apply -auto-approve
```

### 6. Access Jenkins

Once deployment is complete, access Jenkins at your configured domain (e.g., `https://jenkins.example.com`).

## Architecture

This Terraform configuration creates:

- VPC with public and private subnets
- EC2 instance running Jenkins
- Application Load Balancer with SSL
- Route 53 hosted zone
- AWS Certificate Manager SSL certificate

## Module Structure

The configuration is split into multiple modules for clarity and reusability:

- `networking`: VPC, subnets, routing
- `security_groups`: AWS security groups
- `jenkins`: EC2 instance configuration
- `alb`: Application Load Balancer setup
- `hosted_zone`: Route 53 configuration
- `aws_certification_manager`: SSL certificate management

## Additional Information

- The Jenkins EC2 instance uses a user data script for automatic installation
- The ALB is configured for both HTTP (80) and HTTPS (443)
- SSL certificates are automatically managed by AWS ACM

## Cleanup

To destroy the created infrastructure:

```bash
terraform destroy
```
