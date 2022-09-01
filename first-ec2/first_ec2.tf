provider "aws" {
    region = "ap-southeast-2"
    access_key = var.my_access_key
    secret_key = var.my_secret_key
}

resource "aws_instance" "myec2" {
  ami           = "ami-0b55fc9b052b03618"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}