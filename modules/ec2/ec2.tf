resource "aws_instance" "my_ec2" {
    ami = "ami-0b55fc9b052b03618"
    # instance_type = "t2.micro"
    instance_type = var.instance_type

    output "ec2_id" {
        value = "aws_instance.my_ec2.id"
    }
}