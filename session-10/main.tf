module "s3" {
    source = "github.com/aKumoSolutions/terraform-june-2022/modules/s3"
    env = "dev"
    my_name = "iman"
}

module "ec2" {
    source        = "github.com/sanijoi/Terraform-IMAN/iman/ec2"
    ami           = "ami-02d1e544b84bf7502"
    instance_type = "t2.micro"
    env           = "dev"
}
