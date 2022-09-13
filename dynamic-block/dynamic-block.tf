provider "aws" {
  region     = "ap-southeast-2"
  version = "<=4.28"  # new version requires vpc id to be specified in aws_security_group
}

variable "sg_ports" {
    type = list(number)
    description = "list of ingress ports"
    default = [ 8200, 8201, 8300, 9200, 9500 ]
}

resource "aws_security_group" "dynamic_sg" {
  name = "dynamic_sg"
  description = "Ingress for Vault"

  dynamic "ingress" {
      for_each = var.sg_ports
      iterator = port

      content {
          from_port = port.value
          to_port = port.value
          protocol = "tcp"
          cidr_blocks = ["0.0.0.0/0"]
      }
  }
}