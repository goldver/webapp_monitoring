# =======================================================================
data "template_file" "user_data" {
  template = file("${path.module}/files/user_data.txt")
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

  ebs_block_device {
    device_name               = var.device_name
    volume_size               = var.volume_size
    volume_type               = var.volume_type
    delete_on_termination     = false
  }

  tags = {
    Name                      = "${var.instance_name}-${count.index + 1}"
    Managed_by                = "iac"
    Owner                     = var.owner
  }
}
# =======================================================================

