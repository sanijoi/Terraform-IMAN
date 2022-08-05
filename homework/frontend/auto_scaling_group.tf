resource "aws_autoscaling_group" "asg_hw" {
  name                      = "web_auto_scaling_group"
  max_size                  = element (var.ec2_sizes,0)
  min_size                  = element (var.ec2_sizes,1)
  desired_capacity          = element (var.ec2_sizes,2)
  availability_zones         = [var.availability_zone]
  launch_configuration      = aws_launch_configuration.as_launch_conf.name

  lifecycle {
    create_before_destroy = true
  }
  instance_refresh {
    strategy = "Rolling"
  }
    tag {
    key                  = "Name"
    value                = "asg"
    propagate_at_launch = true
  }
    tag {
    key                 = "Environment"
    value               = var.env
    propagate_at_launch = true
  }
}
resource "aws_autoscaling_attachment" "asg_attach_lb" {
  autoscaling_group_name  = aws_autoscaling_group.asg_hw.id
  lb_target_group_arn    = aws_lb_target_group.lb_tg.arn
}