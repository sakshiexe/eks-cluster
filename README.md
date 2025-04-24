# ☁️ AWS EKS Cluster Infrastructure

![Terraform Version](https://img.shields.io/badge/Terraform-%3E%3D1.0-blue)
![AWS Provider](https://img.shields.io/badge/AWS-5.0%2B-orange)
![CI](https://img.shields.io/badge/GitLab-CI%2FCD-blueviolet)

This repository contains Infrastructure as Code (IaC) to deploy a production-grade **Amazon EKS cluster** using **Terraform**, with local state and automated CI/CD using **GitLab pipelines**.

---

## 🚀 Features

- 🛠 **Managed Kubernetes (EKS)** using Terraform
- 🌐 **Custom VPC** with public, private, and intra subnets across two AZs
- 💸 **Cost-effective setup** using EC2 Spot Instances for worker nodes
- 🔐 **Secure architecture** with private node groups and limited internet exposure
- 🔄 **CI/CD automation** via GitLab with `.gitlab-ci.yml`
- 🖥️ **Local deploy script** using `deploy.sh` for on-demand provisioning

---
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
