resource "aws_lb_target_group" "lb_tg" {
    name   = "${var.env}-tg"
    port   = 80
    protocol = "HTTP"
    vpc_id   = var.vpc_id
    health_check  {
        path = "/"
        port = 80
    }
    tags = {
        Name = "tg"
        Environment = var.env
    }
}
