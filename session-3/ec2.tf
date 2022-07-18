resource "aws_instance" "main1" {
  ami           = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"
  vpc_security_group_ids = [ aws_security_group.main.id ]
  key_name = "iman"
  }




# 1. Highlight + Command/Control +/ = Comment && Uncomment
# 2. Command / Control + F = find String
