resource "aws_route_table" "pub_rt" {
    vpc_id = aws_vpc.main1.id
}

resource "aws_route" "pub" {
    route_table_id = aws_route_table.pub_rt.id
    destination_cidr_block = var.cidr_ip
    gateway_id = aws_internet_gateway.gw.id

}

resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "b" {
  subnet_id      = aws_subnet.public2.id
  route_table_id = aws_route_table.pub_rt.id
}

resource "aws_route_table_association" "c" {
  subnet_id      = aws_subnet.public3.id
  route_table_id = aws_route_table.pub_rt.id
}