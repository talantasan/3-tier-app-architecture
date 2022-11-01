resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "3-tier-IGW"
  }
}


resource "aws_eip" "nat_eip" {
  count = length(var.availability_zones)
  depends_on = [
    aws_internet_gateway.igw
  ]
}


resource "aws_nat_gateway" "nat" {
  count = length(var.availability_zones)
  subnet_id     = element(aws_subnet.public.*.id, count.index) 
  allocation_id = element(aws_eip.nat_eip.*.id, count.index)

  tags = {
    "Name" = "3-tier-nat-${count.index}"
  }
}

