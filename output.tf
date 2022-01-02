output "instance_info" {
  value = format("%s - %s","uk02919a",aws_instance.uk02919a.private_ip)
}