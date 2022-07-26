data "aws_ami" "amazon_linux_2" {
  most_recent      = true
  owners           = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-kernel-5.10-hvm-2.0*"]
  }

  filter {
    name   = "architecture"
    values = ["x86_64"]
  }
  
}
resource "aws_lanch_configuration" "ag_config" {
  name          = "web_config"
  image_id      = data.aws_ami.amazon_linux_2.id
  instance_type = "t2.micro"
}
