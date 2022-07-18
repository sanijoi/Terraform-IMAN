resource "aws_nat_gateway" "nat_ig" {
    allocation_id = aws_eip.lb.id
    subnet_id = aws_subnet.public1.id

    tags = {
        Name = "gw Nat"
    }
}
