resource "aws_subnet" "public" {
  count = length(var.subnet_cidrs_public)

  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidrs_public[count.index]
  availability_zone = var.availability_zones[count.index]
  
  tags = {
    Name = "web-subnet-${count.index}"
  }
}

resource "aws_subnet" "private1" {
  count = length(var.subnet_cidrs_private1)

  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidrs_private1[count.index]
  availability_zone = var.availability_zones[count.index]
  
  tags = {
    Name = "app-subnet-${count.index}"
  }
}

resource "aws_subnet" "private2" {
  count = length(var.subnet_cidrs_private2)

  vpc_id = aws_vpc.main.id
  cidr_block = var.subnet_cidrs_private2[count.index]
  availability_zone = var.availability_zones[count.index]

  tags = {
    Name = "db-subnet-${count.index}"
  }
}
