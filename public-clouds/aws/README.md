# Deployment of SUSE AI Stack on GPU powered instance on AWS

## Environment Prerequisites
1. Before running Terraform, ensure you have the CLI tools configured for your target cloud.

```bash
# Install AWS CLI and configure credentials
aws configure
# Verify identity
aws sts get-caller-identity
```
2. ⚠️ Mandatory AWS Marketplace Subscription
This project uses the official openSUSE Leap AMI. Because this is a Marketplace image, you must manually accept the terms **once** per AWS Account:

1. Visit the [openSUSE Leap Marketplace Page](https://aws.amazon.com/marketplace/pp?sku=51luq5gebk3opt7gcvkdrrm89).
2. Ensure you are logged into your target AWS Account.
3. Click **View Purchase Options/Continue to Subscribe** and **Accept Terms**. 

<img width="627" height="1047" alt="image" src="https://github.com/user-attachments/assets/c62ff437-1234-4b34-a956-02dc6a5656ad" />


## Running the Terraform Code

1. Copy ./terraform.tfvars.example to ./terraform.tfvars
2. Edit ./terraform.tfvars
  - Update the required variables:
    - `prefix` to give the resources an identifiable name (e.g., your initials or first name)
    - `region` and `zone` to specify the Google region where resources will be created
    - `registry_name` to specify the name of the registry where the SUSE AI stack helm charts are located.
    - `registry_username` to specify the name of the registry username.
    - `registry_password` to specify the password for the registry.
    - `rke2_version` to specify the version of RKE2 cluster to be installed.
3. Then execute the terraform commands:

```bash
# Navigate to the AWS implementation
cd public-clouds/aws

# Initialize the working directory (downloads providers and modules)
terraform init -upgrade

# Preview the changes (highly recommended)
terraform plan -out=tfplan

# Apply the configuration
terraform apply --auto-approve
```

## Cleanup:

To tear down the infrastructure and avoid costs:

```bash
terraform destroy
```

## Accessing SUSE AI WebUI on browser:

To access SUSE AI WebUi on your browser, you need to map the public IP of the instance to `suse-ollama-webui` host in `/etc/hosts`:

```bash
vi /etc/hosts

<public-ip-of-instance>  suse-ollama-webui
```


