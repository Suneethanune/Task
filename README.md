README.md file with instructions on how to execute the Terraform code:
# Deploying Flask API on AWS with Terraform

## Prerequisites
- Terraform installed
- AWS access and secret keys

## Instructions

1. Clone the repository:

   ```bash
   git clone https://github.com/your/repo.git
   cd repo

Create terraform.tfvars file and set AWS credentials:

# terraform.tfvars

aws_access_key = "your_aws_access_key"
aws_secret_key = "your_aws_secret_key"



Initialize Terraform:
terraform init
Apply the Terraform configuration:
terraform apply
