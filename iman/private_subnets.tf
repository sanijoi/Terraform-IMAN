resource "aws_subnet" "private1" {
    vpc_id = aws_vpc.main1.id
    cidr_block = "10.0.11.0/24"
    availability_zone = "us-east-2a"

    tags = {
      Name = "private1"
    }
}
resource "aws_subnet" "private2" {
    vpc_id = aws_vpc.main1.id
    cidr_block = "10.0.12.0/24"
    availability_zone = "us-east-2b"

    tags = {
        Name = "private2"
    }
}
resource "aws_subnet" "private3" {
    vpc_id = aws_vpc.main1.id
    cidr_block = "10.0.13.0/24"
    availability_zone = "us-east-2c"

    tags = {
        Name = "private3"
    }
}
