/*
resource "aws_subnet" "public_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  availability_zone = var.az1

  depends_on = [
    aws_vpc.main
  ]

  tags = {
    Name = "Public Subnet"
  }
}

resource "aws_subnet" "private_subnet" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr
  availability_zone = var.az3

  depends_on = [
    aws_vpc.main
  ]

  tags = {
    Name = "Private Subnet"
  }
}*/