resource "aws_internet_gateway" "gw" {
    vpc_id = aws_vpc.main1.id
    
    tags = {
        Name = "ig_main"
    }
}