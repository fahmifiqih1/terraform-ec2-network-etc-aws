# Terraform AWS Infrastructure Project

This repository contains Terraform code to set up AWS infrastructure including EC2 instances, security groups, and networks across different environments.

## Introduction to Terraform

Terraform is an open-source infrastructure as code software tool created by HashiCorp. It allows users to define and provision a datacenter infrastructure using a high-level configuration language known as HashiCorp Configuration Language (HCL), or optionally JSON.

## Project Structure

The project is organized into multiple environments and reusable modules. Below is the structure of the project:

.
├── Readme.md
├── environment
│   ├── development
│   │   └── asia-southeast2
│   │       ├── backend.tf
│   │       ├── main.tf
│   │       ├── terraform.tfvars
│   │       ├── variables.tf
│   │       └── version.tf
│   ├── production
│   │   └── asia-southeast2
│   └── staging
│       └── asia-southeast2
└── modules
    ├── elastic_compute_service
    │   ├── main.tf
    │   ├── outputs.tf
    │   ├── provider.tf
    │   └── variables.tf
    ├── network_security_group
    │   ├── main.tf
    │   ├── outputs.tf
    │   ├── provider.tf
    │   └── variables.tf
    └── network_vpc