#--------root/main.tf

provider "aws" {
  region = "${var.aws_region}"
}

#deploy storage resource 
module "storage" {
  source       = "./storage"
  project_name = "${var.project_name}"
}

#deploy Netwprking Resources

module "networking" {
  source       = "./networking"
  vpc_cidr     = "${var.vpc_cidr}"
  public_cidrs = "${var.public_cidrs}"
  accessip     = "${var.accessip}"
}
