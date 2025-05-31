# output "alb_dns_name" {
#   description = "DNS name of the ALB"
#   value       = module.alb.alb_dns_name
# }

output "ec2_instance_ids" {
  description = "IDs of all EC2 instances"
  value       = flatten(module.ec2.instance_ids)
}

output "ec2_private_ips" {
  description = "Private IPs of all EC2 instances"
  value       = flatten(module.ec2.private_servers_private_ip)
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