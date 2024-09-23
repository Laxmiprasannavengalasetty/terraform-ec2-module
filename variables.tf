variable "instance_type" {
  default = "t3.micro"
  type    = string
  validation {
    condition     = contains(["t3.micro", "t3.medium", "t3.small"], var.instance_type)
    error_message = "instace_type can only be one of the t3.micro, t3.medium, and t3.small"

  }

}
variable "ami_id" {

  type = string
}
variable "vpc_security_group_ids" {

  type = list(string)
}