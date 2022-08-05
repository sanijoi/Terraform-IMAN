variable "env" {
  type        = string
  description = "this represents environment"
  default     = "dev"
}
variable "ingress_ports" {
  type        = list(string)
  description = "This is a list of ports for ingress rule"
  default     = ["22", "80", "443"]
}
variable "lb_ingress_ports" {
  type        = list(string)
  description = "This is a list of ports for ingress rule"
  default     = ["80", "443"]
}

variable "key_name" {
  type        = string
  description = "This is my Public Key"
  default     = "iman"
}
variable "instance_type" {
  type        = string
  description = "This is a size of EC2"
  default     = "t2.micro"
}
variable "public_subnet1" {
  type        = string
  description = "This is public subnet 1"
  default     = "subnet-01233971e2fb395bf"
}
variable "public_subnet2" {
  type        = string
  description = "This is public subnet 2"
  default     = "subnet-0f9cb7e4e7339d977"
}
variable "vpc_id" {
  type        = string
  description = "This is vpc id"
  default     = "vpc-01bbd4441a924c70c"
}
variable "availability_zone" {
  type        = string
  description = "This is availability zone"
  default     = "us-east-2b"
}
variable "ec2_sizes" {
  type        = list(string)
  description = "These are max, min sizes and desired capacity for ec2"
  default     = ["3", "2", "3"]
}
variable "cidr_blocks" {
  type        = string
  description = "This is cidr block for sg"
  default     = "0.0.0.0/0"
}