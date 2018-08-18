variable "cidr_vpc" {
  default = "192.168.0.0/16"
}

variable "availability_zones" {
  type = "list"
  default = [
    "us-east-1a",
    "us-east-1b",
    "us-east-1c",
    "us-east-1d",
    "us-east-1e",
    "us-east-1f",
  ]
}

variable "aws_linux_ami" {
  default = "ami-b70554c8"
}

variable "instance_type" {
  default = "t2.micro"
}

variable "my_public_cidr" {}

variable "db_password" {}

