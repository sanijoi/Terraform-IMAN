resource "aws_autoscaling_group" "frontend" {
  name                      = "web_auto_scaling_group"
  max_size                  = 5
  min_size                  = 3
  health_check_grace_period = 200
  health_check_type         = "ELB"
  desired_capacity          = 8
  availability_zone         = 
}
