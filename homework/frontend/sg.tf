resource "aws_security_group" "ec2" {
    name       = "${var.env}-lb-sg"
    description = "This is sg for load balancer"
    

}