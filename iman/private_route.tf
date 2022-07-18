resource "aws_route_table" "privat_tr" {
    vpc_id = aws_vpc.main1.id
}

resource "aws_route" "privat" {
    route_table_id = aws_route_table.privat_tr.id
    destination_cidr_block = var.cidr_ip
    nat_gateway_id = aws_nat_gateway.nat_ig.id
}

resource "aws_route_table_association" "va" {
    subnet_id = aws_subnet.private1.id
    route_table_id = aws_route_table.privat_tr.id

}

resource "aws_route_table_association" "ra" {
    subnet_id = aws_subnet.private2.id
    route_table_id = aws_route_table.privat_tr.id

}

resource "aws_route_table_association" "sa" {
    subnet_id = aws_subnet.private3.id
    route_table_id = aws_route_table.privat_tr.id

}
