#!/bin/bash

set -e

TF_DIR="terraform"
PLAN_OUT="tfplan"

cd "$TF_DIR"

echo "Initializing Terraform..."
terraform init

echo "Validating Terraform configuration..."
terraform validate

echo "Planning Terraform changes..."
terraform plan -out="$PLAN_OUT"

echo "Do you want to apply the changes? [y/N]"
read -r confirm
if [[ "$confirm" == "y" || "$confirm" == "Y" ]]; then
    terraform apply "$PLAN_OUT"
else
    echo "Apply canceled."
fi
