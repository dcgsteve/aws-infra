resource "aws_subnet" "pubsub1" {

  cidr_block = var.pubsub1cidr
  vpc_id = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "apsedge-dc-pubsub1"
  }
}

resource "aws_subnet" "pubsub2" {
  cidr_block = var.pubsub2cidr
  vpc_id = aws_vpc.vpc.id
  map_public_ip_on_launch = true
  availability_zone = data.aws_availability_zones.available.names[1]
  tags = {
    Name = "apsedge-dc-pubsub2"
  }
}

resource "aws_subnet" "prisub1" {
  cidr_block = var.prisub1cidr
  vpc_id = aws_vpc.vpc.id
  map_public_ip_on_launch = false
  availability_zone = data.aws_availability_zones.available.names[0]
  tags = {
    Name = "apsedge-dc-prisub1"
  }
}

resource "aws_subnet" "prisub2" {
  cidr_block = var.prisub2cidr
  vpc_id = aws_vpc.vpc.id
  map_public_ip_on_launch = false
  availability_zone = data.aws_availability_zones.available.names[1]
  tags = {
    Name = "apsedge-dc-prisub2"
  }
}
