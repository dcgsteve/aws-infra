#Elastic IP for NAT Gateway resource
resource "aws_eip" "nat" {
  vpc = true
  tags = {
  Name = "apsedge-dc-eip" }
}

resource "aws_nat_gateway" "ngw" {
  allocation_id = aws_eip.nat.id
  subnet_id     = aws_subnet.pubsub1.id
  depends_on    = [aws_internet_gateway.igw]
  tags = {
  Name = "apsedge-dc-natgw" }
}

resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc.id
  tags = {
  Name = "apsedge-dc-igw" }
}
