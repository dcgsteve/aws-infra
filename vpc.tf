#vpc resource

resource "aws_vpc" "vpc" {
  cidr_block = var.vpccidr
  tags = {
    Name = "apsedge-dc"
  }

}
