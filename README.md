# README

## Setting Up AWS Credentials

1. Ensure you have the AWS CLI installed on your system.

2. Configure AWS credentials by running the following command and following the prompts:

aws configure


This will prompt you to provide your AWS Access Key ID, AWS Secret Access Key, default region, and default output format.

## Terraform Deployment

1. Initialize your Terraform project by navigating to the project directory and running:

terraform init


2. Create a Terraform plan to preview the changes that will be applied to your AWS environment:

terraform plan


3. Apply the Terraform configuration to create or modify AWS resources:

terraform apply


Terraform will execute the plan and prompt for confirmation before making any changes to your infrastructure.

## Application Load Balancer and Target Groups Configuration

By default, the target group and Application Load Balancer listen on port 80. Therefore, ensure that your application is configured to listen on port 80.

If your application listens on a different port or requires additional configuration, make sure to modify the appropriate parts of your Terraform configuration to align with your application's requirements.

For specific port configuration, consult your application's documentation or the Terraform resources related to the Application Load Balancer, such as `aws_lb`, `aws_target_group`, and `aws_lb_listener`.

**Note:** Be cautious when making changes to your AWS infrastructure and ensure that your Terraform configuration aligns with your application's port requirements.