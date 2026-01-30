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

data "aws_availability_zones" "available" {
  state = "available"
}
