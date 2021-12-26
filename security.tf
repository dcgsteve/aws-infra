resource "aws_security_group" "allow_ssh_sg" {
  name        = "allow_ssh"
  description = "Allow SSH inbound traffic"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description      = "Admin SSH access"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["213.205.242.167/32"]
  }

  ingress {
    description      = "Admin NPM access"
    from_port        = 81
    to_port          = 81
    protocol         = "tcp"
    cidr_blocks      = ["213.205.242.167/32"]
  }

  ingress {
    description      = "HTTP access"
    from_port        = 80
    to_port          = 80
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  ingress {
    description      = "HTTPS access"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "admin"
  }
}

resource "aws_security_group" "allow_bastion_sg" {
  name        = "allow_bastion"
  description = "Allow SSH from Bastion Host"
  vpc_id      = aws_vpc.vpc.id

  ingress {
    description      = "SSH from Bastion"
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = [ format("%s/%s",aws_instance.bastion.private_ip,"32") ]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = "dev internal"
  }
}