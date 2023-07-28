output "instance_name" {
  value = aws_instance.instance_name.*.id
}
