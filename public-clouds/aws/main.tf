module "infrastructure" {
  source = "../../modules/infrastructure/aws"

  prefix               = var.prefix
  region               = var.region
  zone                 = var.zone
  instance_type        = var.instance_type
  os_disk_size         = var.os_disk_size
  create_ssh_key_pair  = var.create_ssh_key_pair
  ssh_private_key_path = var.ssh_private_key_path
  ssh_public_key_path  = var.ssh_public_key_path
  existing_key_name    = var.existing_key_name
  vpc_id               = var.vpc_id
  subnet_id            = var.subnet_id
  ip_cidr_range        = var.ip_cidr_range
  rke2_version         = var.rke2_version
}

locals {
  ssh_username         = "ec2-user"
  private_ssh_key_path = var.ssh_private_key_path == null ? "${path.cwd}/${var.prefix}-ssh_private_key.pem" : var.ssh_private_key_path
}
