resource "aws_subnet" "public1" {
    vpc_id = aws_vpc.main1.id
    cidr_block = var.public_subnet1
    availability_zone = "us-east-2a"

    tags = {
      Name = "pub1"
  }
}
resource "aws_subnet" "public2" {
  vpc_id = aws_vpc.main1.id
  cidr_block = var.public_subnet2
  availability_zone = "us-east-2b"

  tags = {
    Name = "pub2"
  }
}
resource "aws_subnet" "public3" {
  vpc_id = aws_vpc.main1.id
  cidr_block = var.public_subnet3
  availability_zone = "us-east-2c"


  tags = {
    Name = "pub3"
  }
}
