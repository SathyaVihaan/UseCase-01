# output "alb_dns_name" {
#   description = "DNS name of the ALB"
#   value       = module.alb.alb_dns_name
# }

# output "ec2_instance_ids" {
#   description = "IDs of all EC2 instances"
#   value       = flatten(module.ec2.instance_ids)
# }

# output "ec2_private_ips" {
#   description = "Private IPs of all EC2 instances"
#   value       = flatten(module.ec2.private_servers_private_ip)
# }


output "homepage_instance_id" {
  description = "ID of the homepage EC2 instance"
  value       = module.homepage_instance.instance_id
}

output "images_instance_id" {
  description = "IDs of all images instance"
  value       = module.images_instance.instance_id
}

output "register_instance_id" {
  description = "IDs of all register instance"
  value       = module.register_instance.instance_id
}

output "homepage_instance_private_ip" {
  description = "IDs of homepage instance private ip"
  value       = module.homepage_instance.private_ip
}

output "images_instance_private_ip" {
  description = "IDs of all images instance private ip"
  value       = module.images_instance.private_ip
}

output "register_instance_private_ip" {
  description = "IDs of all register instance private ip"
  value       = module.register_instance.private_ip
}


output "vpc_id" {
  description = "ID of the VPC"
  value       = module.network.vpc_id
}

output "public_subnet_ids" {
  description = "IDs of the public subnets"
  value       = module.network.public_subnets_id
}

output "private_subnet_ids" {
  description = "IDs of the private subnets"
  value       = module.network.private_subnets_id
}