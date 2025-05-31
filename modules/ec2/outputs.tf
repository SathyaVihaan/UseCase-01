output "private_servers" {
  value = aws_instance.web_servers[*].id
}

# output "public_servers" {
#   value = aws_instance.public-servers[*].id
# }

output "private_servers_public_ip" {
  value = aws_instance.web_servers[*].public_ip
}

output "private_servers_private_ip" {
  value = aws_instance.web_servers[*].private_ip
}

# output "public_servers_public_ip" {
#   value = aws_instance.public-servers[*].public_ip
# }

# output "public_servers_private_ip" {
#   value = aws_instance.public-servers[*].private_ip
# }



output "instance_ids" {
  description = "IDs of the EC2 instances"
  value       = aws_instance.web_servers[*].id
}

