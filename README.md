# eks-cluster
AWS EKS Cluster Infrastructure as Code (IaC)
# AWS EKS Cluster Infrastructure

![Terraform Version](https://img.shields.io/badge/terraform-%3E%3D1.0-blue)
![AWS Provider](https://img.shields.io/badge/AWS-5.0+-orange)

This repository contains Terraform infrastructure as code to deploy a production-ready Amazon EKS cluster following AWS best practices.

## Features

- 🛠 **Managed Kubernetes**: Deploys EKS with optimized configuration
- 🌐 **Networking**: VPC with public, private and intra subnets across 2 AZs
- 💰 **Cost Optimization**: Uses Spot instances for worker nodes
- 🔒 **Security**: Private node groups with controlled access
- 🔄 **CI/CD**: GitHub Actions pipeline for automated deployment

## Architecture

![EKS Architecture Diagram](eks-architecture.png)

## Usage

### Prerequisites
- Terraform 1.0+
- AWS CLI configured
- kubectl
- AWS IAM permissions for EKS

### Deployment

```bash
# Initialize Terraform
terraform init

# Review changes
terraform plan

# Apply configuration
terraform apply
