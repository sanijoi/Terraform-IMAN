variable "instance_type" {
    type = string
    description = "this is a size of EC2"
    default = "t2.micro"
}
variable "key_name" {
    type = string
    description = "this is a  Public key "
    default = "iman"
}
variable "tags" {
    type = string
    description = "this is a for tags "
    default = "QA"
}
variable "ingress_port" {
    type = list(string)
    description = "this is for ingress ports"
    default = ["22", "80", "443"]
}