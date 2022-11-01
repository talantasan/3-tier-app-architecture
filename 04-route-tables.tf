resource "aws_route_table" "public_rt" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = {
    Name = "3-tier-public-rt"
  }
}

resource "aws_route_table" "private_rt_app" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = element(aws_nat_gateway.nat.*.id, count.index)
  }

  tags = {
    Name = "3-tier-private-app-rt-${count.index}"
  }
}

resource "aws_route_table" "private_rt_db" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    nat_gateway_id = element(aws_nat_gateway.nat.*.id, count.index)
  }

  tags = {
    Name = "3-tier-private-db-rt-${count.index}"
  }
}