resource "aws_instance" "bastion" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.allow_ssh_sg.id]
  subnet_id              = aws_subnet.pubsub1.id
  tags = {
    Name = "apsedge-dc-bastion"
  }
}
