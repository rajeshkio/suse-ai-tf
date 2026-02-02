# Deployment of SUSE AI Stack on GPU powered instance on AWS

## Environment Prerequisites
Before running Terraform, ensure you have the CLI tools configured for your target cloud.

```bash
# Install AWS CLI and configure credentials
aws configure
# Verify identity
aws sts get-caller-identity
```

## Running the Terraform Code

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


