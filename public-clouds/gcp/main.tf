module "infrastructure" {
  source = "../../modules/infrastructure/gcp"

  prefix               = var.prefix
  project_id           = var.project_id
  region               = var.region
  zone                 = var.zone
  instance_type        = var.instance_type
  os_disk_type         = var.os_disk_type
  os_disk_size         = var.os_disk_size
  gpu_type             = var.gpu_type
  gpu_count            = var.gpu_count
  spot_instance        = var.spot_instance
  create_ssh_key_pair  = var.create_ssh_key_pair
  ssh_private_key_path = var.ssh_private_key_path
  ssh_public_key_path  = var.ssh_public_key_path
  ip_cidr_range        = var.ip_cidr_range
  rke2_version         = var.rke2_version

}

locals {
  ssh_username         = "opensuse"
  private_ssh_key_path = var.ssh_private_key_path == null ? "${path.cwd}/${var.prefix}-ssh_private_key.pem" : var.ssh_private_key_path
}


