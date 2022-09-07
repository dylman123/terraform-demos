provider "aws" {
    region = "ap-southeast-2"
    access_key = var.my_access_key
    secret_key = var.my_secret_key
}

# variable "custom_eip" {
#     default = "30.112.50.44"
# }

# resource "aws_eip" "my_eip" {
#     address = var.custom_eip
# }