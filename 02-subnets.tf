resource "aws_subnet" "public1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public1_cidr_block
  availability_zone = var.subnet_az1

  tags = {
    Name = "web-public-subnet-1"
  }
}

resource "aws_subnet" "public2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public2_cidr_block
  availability_zone = var.subnet_az2

  tags = {
    Name = "web-public-subnet-2"
  }
}

resource "aws_subnet" "public3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public3_cidr_block
  availability_zone = var.subnet_az3

  tags = {
    Name = "web-public-subnet-3"
  }
}


resource "aws_subnet" "private1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private1_cidr_block
  availability_zone = var.subnet_az1

  tags = {
    Name = "app-private-subnet-1"
  }
}

resource "aws_subnet" "private2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private2_cidr_block
  availability_zone = var.subnet_az2

  tags = {
    Name = "app-private-subnet-2"
  }
}

resource "aws_subnet" "private3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private3_cidr_block
  availability_zone = var.subnet_az3

  tags = {
    Name = "app-private-subnet-3"
  }
}