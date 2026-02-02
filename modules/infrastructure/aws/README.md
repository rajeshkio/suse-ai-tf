# AWS Infrastructure Module for SUSE AI

This module provisions a GPU-accelerated EC2 instance running **openSUSE Leap** and prepares it for the SUSE AI stack by installing NVIDIA drivers and RKE2.

## Features
* Provisions **G4dn** instance types with NVIDIA GPUs.
* Uses **openSUSE Leap 15.x** AMI.
* Automated driver installation via `startupscript.tftpl`.
* Configures Security Groups for SSH and Kubernetes API (6443).

## Usage

```hcl
module "aws_gpu_node" {
  source        = "../../modules/infrastructure/aws"
  
  prefix        = "suse-ai-dev"
  instance_type = "g4dn.xlarge"
  vpc_id        = "vpc-12345"
  subnet_id     = "subnet-12345"
  
}

Prerequisites
1. AWS CLI configured with valid credentials.

```bash
# Install AWS CLI and configure credentials
aws configure
# Verify identity
aws sts get-caller-identity
```

