resource "aws_instance" "terraform" {
  ami                    = var.ami_id
  instance_type          = lookup(var.instance_type, terraform.workspace) #terraform.workspace means which shows which workspace you are in
  vpc_security_group_ids = var.vpc_security_group_ids                       # it's id of allow-all secutiry group
  tags = {
    Name = "terraform-${terraform.workspace}"
  }
}