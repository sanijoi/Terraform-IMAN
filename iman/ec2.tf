resource "aws_instance" "iman_hw" {
    ami = data.aws_ami.amazon_linux_2.image_id
    instance_type = var.instace_type
    vpc_security_group_ids  = [aws_security_group.maga.id]
    key_name = var.key_name
    tags = {
        Name = "sani"
    }
}

resource "aws_instance" "iman_wq" {
    ami = data.aws_ami.amazon_linux_2.image_id
    instance_type = var.instace_type
    vpc_security_group_ids  = [aws_security_group.maga.id]
    key_name = var.key_name
    tags = {
        Name = "joni"
    }
}