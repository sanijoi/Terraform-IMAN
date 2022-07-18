variable "instace_type" {
    type = string
    description = "this is for instace_type"
    default = "t2.micro"
}
variable "key_name" {
    type = string
    description = "My Public"
    default = "iman"
}
variable "tags" {
    type = string
    description = "tag for instance Name"
    default = "qwerty"
}

# variable fort subnets
variable "public_subnet1" {
    type = string
    description = "this for public subnet"
    default = "10.0.1.0/24"
}

variable "public_subnet2" {
    type = string
    description = "this for public subnet"
    default = "10.0.2.0/24"
}

variable "public_subnet3" {
    type = string
    description = "this for public subnet"
    default = "10.0.3.0/24"
}

variable "privet_subnet1" {
    type = string
    description = "this for public subnet"
    default = "10.0.1.0/24"
}
variable "privat_subnet2" {
    type = string
    description = "this for public subnet"
    default = "10.0.12.0/24"
}
variable "privat_subnet3" {
    type = string
    description = "this for public subnet"
    default = "10.0.13.0/24"
}
variable "cidr_ip" {
    type = string
    description = "this for cidr ip addres"
    default = "0.0.0.0/0"
}