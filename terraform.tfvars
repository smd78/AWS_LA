###main/tfvars file

aws_region = "eu-central-1"
project_name = "la-terraform"
vpc_cidr  = "172.123.0.0/16"
public_cidrs = [
     "172.123.1.0/24",
     "172.123.2.0/24"
     ]
accessip = "0.0.0.0/0"

key_name = "tf_key"
public_key_path = "c:\\users\\stuart\\.ssh\\id_rsa.pub"
instance_type = "t2.micro"
instance_count = 2