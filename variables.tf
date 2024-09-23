# optional , default value is t3.micro, user can always override
variable "instance_type" {
  default = "t3.micro"
  type    = string
  validation {
    condition     = contains(["t3.micro", "t3.medium", "t3.small"], var.instance_type)
    error_message = "instace_type can only be one of the t3.micro, t3.medium, and t3.small"

  }

}
# mandatory user should supply
variable "ami_id" {
  default = "ami-09c813fb71547fc4f"
  type = string
}
# mandatory user should supply
variable "vpc_security_group_ids" {

  type = list(string)
}