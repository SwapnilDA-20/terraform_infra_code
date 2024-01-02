resource "aws_subnet" "public-subnet-1" {
  vpc_id     = "vpc-008fbcee8dcd2ab92"
  cidr_block = "172.31.60.0/24"
  availability_zone = "eu-north-1a"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id     = "vpc-008fbcee8dcd2ab92"
  cidr_block = "172.31.94.0/24"
  availability_zone = "eu-north-1b"
  map_public_ip_on_launch = true

  tags = {
    Name = "public-subnet-1"
  }
}

