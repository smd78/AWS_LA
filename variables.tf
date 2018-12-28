#------------root/var.tf

variable "aws_region" {}

#-----storageVars
variable "project_name" {}

#----networking Variables

variable "vpc_cidr" {}

variable "public_cidrs" {
  type = "list"
}

variable "accessip" {}

#----compute variables
variable "key_name" {}

variable "public_key_path" {}

variable "instance_count" {
  default = 1
}

variable "instance_type" {}
