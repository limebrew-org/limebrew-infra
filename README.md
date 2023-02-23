# limebrew-infra
Infrastructure to run limebrew services using Terraform, Kubernetes and Ansible

## Introduction
Limebrew infrastructure is managed by `Terraform` and is planning to switch to `Kubernetes` for deployment

## Commands:
The mostly used `terraform` commands are as follows:

        terraform init

        terraform workspace new dev

        terraform workspace select dev

        terraform validate

        terraform plan

        terraform apply --auto-approve

        terraform show

        terraform destroy

## Infrastructure Cost Analysis:
To check the infrastructure cost via terminal before running the infrastructure, we use a tool `infracost`

        infracost breakdown --path .