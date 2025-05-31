# In your ec2 module
resource "aws_instance" "web_servers" {
  count                       = length(var.private_subnets)
  ami                         = var.ami_name
  instance_type               = var.instance_type
  subnet_id                   = element(var.private_subnets, count.index)
  vpc_security_group_ids      = [var.sg_id]
  key_name                    = var.key_name
  associate_public_ip_address = false
  iam_instance_profile        = var.iam_instance_profile != "" ? var.iam_instance_profile : null
  user_data = (
    count.index == 0 ? var.user_data.home :
    count.index == 1 ? var.user_data.image :
    var.user_data.register
  )
  tags = {
    Name = "${var.project_name}-web-${count.index + 1}"
  }
}
