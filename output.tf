output "public_ip" {
  value   = aws_instance.terraform.public_ip

  description = "Public_Ip"
 
}
output "private_ip" {
  value   = aws_instance.terraform.private_ip

  description = "Privarte_Ip"
 
}
output "instance_id" {
  value   = aws_instance.terraform.id

  description = "instance_id"
 
}