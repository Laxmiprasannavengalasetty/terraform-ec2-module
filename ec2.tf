resource "aws_instance" "terraform" {
  ami                    = var.ami_id
  instance_type          = var.instance_type
  vpc_security_group_ids = var.vpc_security_group_ids                       # it's id of allow-all secutiry group
  tags = {
    Name = "terraform"
  }
}