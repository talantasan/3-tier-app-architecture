resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.main.id

  tags = {
    Name = "3-tier-IGW"
  }
}


resource "aws_eip" "nat1_eip" {
  depends_on = [
    aws_internet_gateway.igw
  ]
}

resource "aws_eip" "nat2_eip" {
  depends_on = [
    aws_internet_gateway.igw
  ]
}

resource "aws_eip" "nat3_eip" {
  depends_on = [
    aws_internet_gateway.igw
  ]
}

resource "aws_nat_gateway" "nat1" {
  subnet_id     = aws_subnet.public1.id 
  allocation_id = aws_eip.nat1_eip.id

  tags = {
    "Name" = "3-tier-nat1"
  }
}

resource "aws_nat_gateway" "nat2" {
  subnet_id     = aws_subnet.public2.id 
  allocation_id = aws_eip.nat2_eip.id

  tags = {
    "Name" = "3-tier-nat2"
  }
}

resource "aws_nat_gateway" "nat3" {
  subnet_id     = aws_subnet.public1.id 
  allocation_id = aws_eip.nat3_eip.id

  tags = {
    "Name" = "3-tier-nat3"
  }
}

