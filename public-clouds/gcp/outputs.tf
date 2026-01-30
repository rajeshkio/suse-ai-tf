output "external_ip" {
  description = "The public IP of the GPU instance"
  value       = module.infrastructure.external_ip
}

output "ssh_command" {
  description = "Convenience command to login"
  value       = "ssh -i ${local.private_ssh_key_path} ${local.ssh_username}@${module.infrastructure.external_ip}"
}

output "kubeconfig_path" {
  value = "${path.cwd}/kubeconfig-rke2.yaml"
}
