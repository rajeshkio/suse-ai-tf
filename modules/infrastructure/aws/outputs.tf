output "ec2_public_ip" {
  value = aws_instance.opensuse_gpu[0].public_ip
}

output "kubeconfig_path" {
  value = "${path.cwd}/kubeconfig-rke2.yaml"
}

output "ssh_command" {
  description = "Convenience command to login"
  value       = "ssh -i ${local.private_ssh_key_path} ${local.ssh_username}@${aws_instance.opensuse_gpu[0].public_ip}"
}
