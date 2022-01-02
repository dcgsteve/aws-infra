resource "aws_instance" "bastion" {
  ami                    = var.bastion_ami
  instance_type          = var.bastion_type
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = [aws_security_group.allow_ssh_sg.id]
  subnet_id              = aws_subnet.pubsub1.id
  tags = {
    Name = "apsedge-dc-bastion"
  }
}

# Steve Cliff
resource "aws_instance" "dc-uk02919" {
  ami                    = var.dev_ami
  instance_type          = var.dev_type
  key_name               = var.key_name
  monitoring             = true
  vpc_security_group_ids = [ aws_security_group.allow_bastion_sg.id ]
  subnet_id              = aws_subnet.prisub1.id
  tags = {
    Name = "apsedge-dc-uk02919"
  }
}
