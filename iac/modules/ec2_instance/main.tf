data "template_file" "user_data" {
  template = file("${path.module}/user_data.txt")
  vars = {
    instance_name             = var.instance_name
  }
}
# =======================================================================

resource "aws_instance" "instance_name" {
  count                       = var.instance_count
  ami                         = var.instance_ami
  instance_type               = var.instance_type
  user_data                   = data.template_file.user_data.rendered
  subnet_id                   = var.instance_sn
  key_name                    = var.instance_key
  iam_instance_profile        = var.instance_iam
  associate_public_ip_address = var.instance_public_ip
  vpc_security_group_ids      = concat(var.management_sg, var.instance_sg)

  ebs_block_device {
    device_name               = var.device_name
    volume_size               = var.volume_size
    volume_type               = var.volume_type
    delete_on_termination     = false
  }

  tags = {
    Name                      = "${var.env_profile}-${var.instance_name}-${count.index + 1}"
    Environment               = var.env_profile
    Managed_by                = "Terraform"
    Owner                     = var.owner
    Service_type              = var.service_type
  }
}

