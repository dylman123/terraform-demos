# provider "aws" {
#   region     = "ap-southeast-2"
# }

# resource "aws_instance" "web" {
#   ami = "ami-0b55fc9b052b03618"
#   instance_type = "t2.micro"
#   key_name = "terraform-key"

#   connection {
#     type = "ssh"
#     user = "ec2-user"
#     private_key = file("../credentials/terraform-key.pem")
#     host = self.public_ip
#   }

#   provisioner "remote-exec" {
#     inline = [
#         "sudo amazon-linux-extras install -y nginx1",
#         "sudo systemctl start nginx"
#     ]
#   }
# }