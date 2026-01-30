variable "prefix" {
  type    = string
  default = "aws-tf"
}

variable "region" {
  type    = string
  default = "us-west-2"
}

variable "zone" {
  type    = string
  default = "us-west-2a"
}

variable "instance_type" {
  type    = string
  default = "g4dn.xlarge"
}

variable "os_disk_size" {
  type    = number
  default = 150
}

variable "create_ssh_key_pair" {
  type    = bool
  default = true
}

variable "ssh_private_key_path" {
  type    = string
  default = null
}

variable "ssh_public_key_path" {
  type    = string
  default = null
}

variable "existing_key_name" {
  type    = string
  default = ""
}

variable "vpc_id" {
  type    = string
  default = null
}

variable "subnet_id" {
  type    = string
  default = null
}

variable "ip_cidr_range" {
  type    = string
  default = "10.0.1.0/24"
}

variable "rke2_version" {
  type    = string
  default = "v1.30.2+rke2r1"
}
