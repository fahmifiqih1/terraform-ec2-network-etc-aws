resource "aws_vpc" "terraform" {
  cidr_block = "10.0.0.0/18"

  tags = {
    Name = "terraform-learn"
  }
}

resource "aws_subnet" "terraform-ap-southeas1-public-a" {
  vpc_id            = aws_vpc.terraform.id
  cidr_block        = "10.0.0.0/20"
  availability_zone = var.availability_zone_a

  tags = {
    Name = "terraform-ap-southeas1-public-a"
  }
}

resource "aws_subnet" "terraform-ap-southeas1-private-a" {
  vpc_id            = aws_vpc.terraform.id
  cidr_block        = "10.0.16.0/20"
  availability_zone = var.availability_zone_a

  tags = {
    Name = "terraform-ap-southeas1-private-a"
  }
}

resource "aws_subnet" "terraform-ap-southeas1-public-b" {
  vpc_id            = aws_vpc.terraform.id
  cidr_block        = "10.0.32.0/20"
  availability_zone = var.availability_zone_b

  tags = {
    Name = "terraform-ap-southeas1-public-b"
  }
}

resource "aws_subnet" "terraform-ap-southeas1-private-b" {
  vpc_id            = aws_vpc.terraform.id
  cidr_block        = "10.0.48.0/20"
  availability_zone = var.availability_zone_b

  tags = {
    Name = "terraform-ap-southeas1-private-b"
  }
}