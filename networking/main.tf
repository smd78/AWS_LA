#------networking/main.tf------

data "aws_availability_zones" "available" {}

resource "aws_vpc" "tf_vpc" {
  cidr_block           = "${var.vpc_cidr}"
  enable_dns_hostnames = true
  enable_dns_support   = true

  tags {
    Name = "Stu_Test"
  }
}

resource "aws_internet_gateway" "tf_internet_gateway" {
  vpc_id = "${aws_vpc.tf_vpc.id}"

  tags {
    Name         = "tf_igw"
    oEnvironment = "Stu_Test"
  }
}

resource "aws_route_table" "tf_public_rt" {
  vpc_id = "${aws_vpc.tf_vpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.tf_internet_gateway.id}"
  }

  tags {
    Name         = "tf_public_route"
    oEnvironment = "Stu_Test"
  }
}

resource "aws_default_route_table" "tf_private_rt" {
  default_route_table_id = "{aws_vpc.tf_vpc.default_route_table.id}"

  tags {
    Name         = "tf_private_route"
    oEnvironment = "Stu_test"
  }
}
