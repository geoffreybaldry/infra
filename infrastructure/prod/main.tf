resource "aws_vpc" "main" {
  cidr_block = "11.0.0.0/16"

  tags = {
    Name: "cloud-prod"
  }
}

resource "aws_subnet" "subnet_1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "11.0.1.0/24"

  tags = {
    Name = "subnet_1",
  }
}

resource "aws_subnet" "subnet_2" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "11.0.2.0/24"

  tags = {
    Name = "subnet_2",
  }
}

resource "aws_subnet" "subnet_3" {
  vpc_id     = aws_vpc.main.id
  cidr_block = "11.0.3.0/24"

  tags = {
    Name = "subnet_3",
  }
}