#module "iam" {
#  source                     = "../../modules/iam"
#
#  instance_name              = var.instance_name
#  env_profile                = var.env_profile
#  component                  = var.component
#  include_policy             = var.include_policy
#}
# =======================================================================

#module "sg" {
#  source                     = "../../modules/security_group"
#
#  vpc_id                     = var.vpc_id
#  instance_name              = var.instance_name
#  env_profile                = var.env_profile
#  component                  = var.component
#  sg_description             = var.sg_description
#
#  sec_group_rules_list       = var.sec_group_rules_list
#  sec_group_rules_source_sgs = var.sec_group_rules_source_sgs
#}
# =======================================================================
#
#module "subnet_sn" {
#  source                    = "../../modules/subnet"
#
#  region                    = var.region
#  vpc_id                    = var.vpc_id
#  instance_name             = var.instance_name
#  env_profile               = var.env_profile
#  component                 = var.component
#  subnet_cidrs              = [ var.subnet_cidr_1 ]
#  map_public_ip_on_launch   = "true"
#  count_index               = 1
#}
# =======================================================================
# The key, security group, IAM role and Subnet are default to avoid create it form the modules
module "ec2" {
  source = "../../modules/ec2_instance"

  instance_name               = var.instance_name
  instance_ami                = var.instance_ami
  instance_type               = var.instance_type
  instance_sn                 = "subnet-11084b2c"
}
# =======================================================================





