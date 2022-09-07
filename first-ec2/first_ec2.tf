provider "aws" {
  region     = "ap-southeast-2"
  access_key = var.my_access_key
  secret_key = var.my_secret_key
}

# This data source finds the relevant ami per the specified AWS region above
data "aws_ami" "my_ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }
}

resource "aws_instance" "myec2" {
  # ami = "ami-0b55fc9b052b03618"
  ami           = data.aws_ami.my_ami.id
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}