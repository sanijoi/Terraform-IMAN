resource "aws_security_group" "main" {
  name        = var.security_group
  description = "this is sg for my EC2 instance"
}


resource "aws_security_group_rule" "ingress_rule" {
  count                  = 3
  type                   = "ingress"
  from_port              = element(var.ingress_port, count.index)
  to_port                = element(var.ingress_port, count.index)
  protocol               = "tcp"
  cidr_blocks             = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}

resource "aws_security_group_rule" "engress_rule" {
  type                   = "egress"
  from_port              = 0
  to_port                = 0
  protocol               = "-1"
  cidr_blocks             = ["0.0.0.0/0"]
  security_group_id = aws_security_group.main.id
}