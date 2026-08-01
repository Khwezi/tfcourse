provider "aws" {
  region = "af-south-1"
}

variable "dbname" {
    type = string
}

resource "aws_instance" "db" {
  ami           = "ami-052c3f77bd3e4114d"
  instance_type = "t3.micro" 
  tags = {
    Name = var.dbname
  }
}