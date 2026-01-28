data "aws_ami" "opensuse_leap" {
  most_recent = true
  # Owner ID for openSUSE Marketplace images
  owners = ["679593333241"]

  filter {
    name = "name"
    # Matches the specific version and architecture you provided
    values = ["openSUSE-Leap-15-6-v*-hvm-ssd-x86_64-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
}




#data "aws_ami" "suse_sle_micro6" {
#  most_recent = true
#
#  owners = ["013907871322"]
#
#  filter {
#    name   = "name"
#    values = ["suse-sle-micro-6-1-byos-v20250210-hvm-ssd-x86_64"]
#  }
#}

data "aws_availability_zones" "available" {
  state = "available"
}

#data "local_file" "ssh_public_key" {
#  count    = var.use_existing_ssh_public_key ? 1 : 0
#  filename = var.user_ssh_public_key
#}

#data "local_file" "ssh_private_key" {
#  count    = var.use_existing_ssh_public_key ? 1 : 0
#  filename = var.user_ssh_private_key
#}
