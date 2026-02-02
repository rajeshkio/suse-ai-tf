# GCP Infrastructure Module for SUSE AI

This module provisions a Google Compute Engine (GCE) instance with attached NVIDIA GPUs running **openSUSE** to host the SUSE AI components.

## Features
* Supports **NVIDIA T4, L4, or A100** GPUs.
* Custom `startupscript.tftpl` to automate NVIDIA driver and RKE2 installation.
* Automates VPC and Firewall rule creation for RKE2 management.

## Usage

```hcl
module "gcp_gpu_node" {
  source         = "../../modules/infrastructure/gcp"
  
  project_id     = "your-project-id"
  region         = "us-central1"
  zone           = "us-central1-a"
  instance_type  = "n1-standard-4"
  
  gpu_type       = "nvidia-tesla-t4"
  gpu_count      = 1
  
  # openSUSE Image family
  os_image       = "opensuse-leap-15-v20230510-x86-64"
}

## Environment Prerequisites
Before running Terraform, ensure you have the CLI tools configured for your target cloud.

```bash
# Install Google Cloud SDK and authenticate
gcloud auth login
gcloud auth application-default login
# Set your active project
gcloud config set project <YOUR_PROJECT_ID>
```
