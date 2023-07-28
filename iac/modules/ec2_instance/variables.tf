variable "instance_name" {
  description = "Name of AWS instance"
}
variable "owner" {
  default = "devops"
}
# =======================================================================
variable "instance_count" {
  description = "Number of instances ID to create and/or to place in the ELB pool"
  default = 1
}
variable "instance_ami" {
  description = "AMI, we want to use to create an instance"
}
variable "instance_public_ip" {
  description = "Public IP, if needed"
  default = false
}
variable "instance_type" {
  description = "AWS instance type we want to create"
}
variable "volume_size" {
  default = 30
}
variable "instance_sn" {
  description = "Subnet we going to attach to instance"
}
variable "volume_type" {
  default = "gp2"
}
variable "device_name" {
  default = "/dev/sda1"
}
