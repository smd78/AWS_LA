#------root/outputs
output "Bucket Name" {
  value = "${module.storage.bucketname}"
}

#------Networking Outputs

output "Public Subnets" {
  value = "${join(", ", module.networking.public_subnet)}"
}

output "subnet IPs" {
  value = "${join(", ", module.networking.subnet_ips)}"
}

output "Public Security Group" {
  value = "${module.networking.public_sg}"
}

#------Compute Outputs

output "Public Instance IDs" {
  value = "${module.compute.server_id}"
}

output "public Instance IPs" {
  value = "${module.compute.server_ip}"
}
