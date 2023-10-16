resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr_block

  tags = {
    Name = "Challenge"
  }
}

resource "aws_subnet" "my_subnets" {
  count = length(var.subnet_cidr_blocks)
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = var.subnet_cidr_blocks[count.index]
  availability_zone = element(["us-east-1a", "us-east-1b"], count.index)
  map_public_ip_on_launch = true
}

resource "aws_route_table" "my_route_table" {
  vpc_id = aws_vpc.my_vpc.id
}

resource "aws_route" "route_to_internet" {
  route_table_id = aws_route_table.my_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id = aws_internet_gateway.my_igw.id
}

resource "aws_internet_gateway" "my_igw" {
  vpc_id = aws_vpc.my_vpc.id
}

resource "aws_route_table_association" "my_route_association" {

    count          = length(var.subnet_cidr_blocks)
    subnet_id      = element(aws_subnet.my_subnets.*.id , count.index)
    route_table_id = aws_route_table.my_route_table.id
}