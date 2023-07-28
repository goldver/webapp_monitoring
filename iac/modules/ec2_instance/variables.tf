variable "instance_name" {
  description = "Name of AWS instance"
}

variable "env_profile" {
  description = "Environment: Dev/ Stg/ Prd"
}

variable "component" {
  description = "What is a logic component, e.g: elb, redis etc'"
  default = "ec2"
}

variable "owner" {
  default = "DevOps"
}

variable "service_type" {
  default = ""
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
  default = 50
}
variable "instance_key" {
  description = "AWS key we going to attach to instance"
}

# =======================================================================
variable "instance_sg" {
  description = "AWS security group we going to attach to instance"
  type        = list(string)
}
variable "management_sg" {
  description = "AWS management security group we going to attach to instance"
  type        = list(string)
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

variable "instance_iam" {
  description = "AWS IAM role we going to attach to instance"
}
