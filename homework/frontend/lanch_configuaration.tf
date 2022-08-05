resource "aws_launch_configuration" "as_launch_conf" {
  name_prefix     = "${var.env}-launch-conf"
  image_id        = data.aws_ami.amazon_linux_2.image_id
  instance_type   = var.instance_type
  security_groups = [aws_security_group.main.id]
  key_name        = var.key_name
  user_data       = file("user_data.sh")
  lifecycle {
    create_before_destroy = true
  }
}
