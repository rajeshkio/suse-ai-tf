output "external_ip" {
  description = "The public IP of the GPU instance"
  value       = google_compute_instance.default[0].network_interface[0].access_config[0].nat_ip
}

output "ssh_command" {
  description = "Convenience command to login"
  value       = "ssh -i ${local.private_ssh_key_path} ${local.ssh_username}@${google_compute_instance.default[0].network_interface[0].access_config[0].nat_ip}"
}

output "kubeconfig_path" {
  value = "${path.cwd}/kubeconfig-rke2.yaml"
}
