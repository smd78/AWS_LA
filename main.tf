provider "aws" {
    region = "${var.aws_region}"
  
}
#deploy storage resource 
module "storage" {
    source = "./storage"
    project_name = "${var.project_name}"
}