provider "aws" {
  region = "af-south-1"
}

resource "aws_vpc" "main" {
  cidr_block = "10.0.0.0/16"
  tags = {
    Name = "main-vpc"
  }
}

# variable "dbname" {
#     type = string
# }

# resource "aws_instance" "db" {
#   ami           = "ami-052c3f77bd3e4114d"
#   instance_type = "t3.micro" 
#   tags = {
#     Name = var.dbname
#   }
# }